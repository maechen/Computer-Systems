//-*-c++-*-
#ifndef _rtdsc_h_
#define _rtdsc_h_

//
// Inline function to read the CPU clock
//
inline
unsigned int rdtscll(void)
{
   unsigned a, d;

   __asm__ volatile("rdtsc" : "=a" (a), "=d" (d));

   return ((unsigned long)a) | (((unsigned long)d) << 32);;
}

#endif
