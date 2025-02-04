// 
// tsh - A tiny shell program with job control
// 
// <Put your name and login ID here>
//

using namespace std;

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include <string>

#include "globals.h"
#include "jobs.h"
#include "helper-routines.h"

//
// Needed global variable definitions
//

static char prompt[] = "tsh> ";
int verbose = 0;

//
// You need to implement the functions eval, builtin_cmd, do_bgfg,
// waitfg, sigchld_handler, sigstp_handler, sigint_handler
//
// The code below provides the "prototypes" for those functions
// so that earlier code can refer to them. You need to fill in the
// function bodies below.
// 

void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

//
// main - The shell's main routine 
//
int main(int argc, char **argv) 
{
  int emit_prompt = 1; // emit prompt (default)

  //
  // Redirect stderr to stdout (so that driver will get all output
  // on the pipe connected to stdout)
  //
  dup2(1, 2);

  /* Parse the command line */
  char c;
  while ((c = getopt(argc, argv, "hvp")) != EOF) {
    switch (c) {
    case 'h':             // print help message
      usage();
      break;
    case 'v':             // emit additional diagnostic info
      verbose = 1;
      break;
    case 'p':             // don't print a prompt
      emit_prompt = 0;  // handy for automatic testing
      break;
    default:
      usage();
    }
  }

  //
  // Install the signal handlers
  //

  //
  // These are the ones you will need to implement
  //
    
  // signal handler calls a signal handler when recieves a certain signal. so if get signal stop, call signal stop handler
  // registering the handles for specific signals
  Signal(SIGINT,  sigint_handler);   // ctrl-c
  Signal(SIGTSTP, sigtstp_handler);  // ctrl-z
  Signal(SIGCHLD, sigchld_handler);  // Terminated or stopped child

  //
  // This one provides a clean way to kill the shell
  //
  Signal(SIGQUIT, sigquit_handler); 

  //
  // Initialize the job list
  //
  initjobs(jobs);

  //
  // Execute the shell's read/eval loop
  //
  for(;;) {
    //
    // Read command line
    //
    if (emit_prompt) {
      printf("%s", prompt);
      fflush(stdout);
    }

    char cmdline[MAXLINE];

    if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin)) {
      app_error("fgets error");
    }
    //
    // End of file? (did user type ctrl-d?)
    //
    if (feof(stdin)) {
      fflush(stdout);
      exit(0);
    }

    //
    // Evaluate command line
    //
    eval(cmdline);
    fflush(stdout);
    fflush(stdout);
  } 

  exit(0); //control never reaches here
}
  
/////////////////////////////////////////////////////////////////////////////
//
// eval - Evaluate the command line that the user has just typed in
// 
// If the user has requested a built-in command (quit, jobs, bg or fg)
// then execute it immediately. Otherwise, fork a child process and
// run the job in the context of the child. If the job is running in
// the foreground, wait for it to terminate and then return.  Note:
// each child process must have a unique process group ID so that our
// background children don't receive SIGINT (SIGTSTP) from the kernel
// when we type ctrl-c (ctrl-z) at the keyboard.
//
void eval(char *cmdline) 
{
  /* Parse command line */
  //
  // The 'argv' vector is filled in by the parseline
  // routine below. It provides the arguments needed
  // for the execve() routine, which you'll need to
  // use below to launch a process.
  //
  char *argv[MAXARGS];
    
  //initializing the mask as a sigset_t
  sigset_t mask;
  // blocking first
  sigemptyset(&mask);
  sigaddset(&mask, SIGCHLD);
  sigprocmask(SIG_BLOCK, &mask, NULL);

  //
  // The 'bg' variable is TRUE if the job should run
  // in background mode or FALSE if it should run in FG
  //
  int bg = parseline(cmdline, argv); // this line will return true if it is a background job
  if (argv[0] == NULL){
    return;   /* ignore empty lines */
  }
  int bc = builtin_cmd(argv);
  if (!bc){
      pid_t pid = fork(); // fork, create child process, execute cmd in child process, do other stuff in parent process
      if(pid == 0) // child process
      {
        sigprocmask(SIG_UNBLOCK, &mask, NULL);
        setpgid(0,0); // makes sure child process doesn't have same process group id as parent bc sig handler sends signal to -pid which is processes in same process group id and child don't want to be handled
        //check if command is there
        if(execvp(argv[0], argv) < 0) {
            printf("%s: Command not found\n", argv[0]);
            exit(1);
        }
        // execve(argv[0],argv, environ); //load and run the program IMPORTANT INTERVIEW GRADING
        // printf("%s: Command not found\n", argv[0]); // if the command is not found, it will return a neg if it is not found. 
        exit(0); // exits the shell so that there won't be multiple instances of the shell running.
      }
      else if (pid != 0)// parent process
      {
        if(!bg) // if FG process
        {
          addjob(jobs,pid,FG,cmdline); // add a FG job
          sigprocmask(SIG_UNBLOCK, &mask, 0);
          waitfg(pid); // this line prevents zombies, it will make the parent wait for the child and reap it after
        }
        else
        {
          addjob(jobs, pid, BG, cmdline); // add a BG job 
          struct job_t *job = getjobpid(jobs, pid); // gets the job ID of the new job
          printf("[%d] (%d) %s", job->jid, pid, cmdline);
          sigprocmask(SIG_UNBLOCK, &mask, 0);
        }
      }
    }

  return;
}


/////////////////////////////////////////////////////////////////////////////
//
// builtin_cmd - If the user has typed a built-in command then execute
// it immediately. The command name would be in argv[0] and
// is a C string. We've cast this to a C++ string type to simplify
// string comparisons; however, the do_bgfg routine will need 
// to use the argv array as well to look for a job number.
//
int builtin_cmd(char **argv) 
{
  string cmd(argv[0]);
    if (cmd == "quit"){ /* quit cmd */
        exit(0);
    }
    if (cmd == "jobs"){ /* jobs cmd */
        listjobs(jobs);
        return 1;
    }
    if (cmd == "bg" || cmd == "fg"){
        do_bgfg(argv);
        return 1;
    }
  return 0;     /* not a builtin command */
}

/////////////////////////////////////////////////////////////////////////////
//
// do_bgfg - Execute the builtin bg and fg commands
//
void do_bgfg(char **argv) 
{
  struct job_t *jobp=NULL;
    
  /* Ignore command if no argument */
  if (argv[1] == NULL) {
    printf("%s command requires PID or %%jobid argument\n", argv[0]);
    return;
  }
    
  /* Parse the required PID or %JID arg */
  if (isdigit(argv[1][0])) {
    pid_t pid = atoi(argv[1]);
    if (!(jobp = getjobpid(jobs, pid))) {
      printf("(%d): No such process\n", pid);
      return;
    }
  }
  else if (argv[1][0] == '%') {
    int jid = atoi(&argv[1][1]);
    if (!(jobp = getjobjid(jobs, jid))) {
      printf("%s: No such job\n", argv[1]);
      return;
    }
  }	    
  else {
    printf("%s: argument must be a PID or %%jobid\n", argv[0]);
    return;
  }

  //
  // You need to complete rest. At this point,
  // the variable 'jobp' is the job pointer
  // for the job ID specified as an argument.
  //
  // Your actions will depend on the specified command
  // so we've converted argv[0] to a string (cmd) for
  // your benefit.
  //
  string cmd(argv[0]);
    
  if (cmd == "bg"){
      kill(jobp->pid, SIGCONT); // IMPORTANT INTERVIEW GRADING
      // kill cmd with sigcont, sending continue signal
      jobp->state = BG;
      // change status of job to be bg
      printf("[%d] (%d) %s" , jobp->jid, jobp->pid, jobp->cmdline);
  }
  else if (cmd == "fg"){
      kill(jobp->pid, SIGCONT);
      // kill cmd with sigcont
      jobp->state = FG;
      // change status of job to be fg
      waitfg(jobp->pid);
  }

  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// waitfg - Block until process pid is no longer the foreground process
//
void waitfg(pid_t pid)
{
  struct job_t *j = getjobpid(jobs, pid);
  if (!j) return;
  while(j->pid == pid && j->state==FG)
  {
    sleep(1); // when the PID is = to foreground PID, does nothing.
  } // when it is not in a foreground process, it will stop sleeping
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// Signal handlers
//


/////////////////////////////////////////////////////////////////////////////
//
// sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
//     a child job terminates (becomes a zombie), or stops because it
//     received a SIGSTOP or SIGTSTP signal. The handler reaps all
//     available zombie children, but doesn't wait for any other
//     currently running children to terminate.  
//
void sigchld_handler(int sig) 
{
  pid_t child_pid;
  int status;
  while ((child_pid = waitpid(-1, &status, WNOHANG|WUNTRACED)) > 0){ // doesn't wait for any other curr running children to term, detects any terminated or stopped jobs, async gathering
      if (WIFSTOPPED(status)){
          struct job_t *job = getjobpid(jobs,child_pid);
          job -> state =  ST;
          printf("Job [%d] (%d) stopped by signal 20\n", jobs->jid, child_pid);
          return;
      }
      else if (WIFSIGNALED(status)){
          printf("Job [%d] (%d) terminated by signal 2\n", jobs->jid, child_pid);
          deletejob(jobs,child_pid);
      }
      else if (WIFEXITED(status)){
          deletejob(jobs,child_pid);
      }

  }
  
  
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigint_handler - The kernel sends a SIGINT to the shell whenver the
//    user types ctrl-c at the keyboard.  Catch it and send it along
//    to the foreground job.  
//
void sigint_handler(int sig) 
{
  pid_t pid = fgpid(jobs);
  if(pid > 0)
  {
    kill(-pid, SIGINT);
  }
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
//     the user types ctrl-z at the keyboard. Catch it and suspend the
//     foreground job by sending it a SIGTSTP.  
//
void sigtstp_handler(int sig) 
{
  pid_t pid = fgpid(jobs);
  if(pid > 0)
  {
    kill(-pid, SIGTSTP);
  }
  return;
}

/*********************
 * End signal handlers
 *********************/




