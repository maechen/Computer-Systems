/* 
 * mm-implicit.c -  Simple allocator based on implicit free lists, 
 *                  first fit placement, and boundary tag coalescing. 
 *
 * Each block has header and footer of the form:
 * 
 *      31                     3  2  1  0 
 *      -----------------------------------
 *     | s  s  s  s  ... s  s  s  0  0  a/f
 *      ----------------------------------- 
 * 
 * where s are the meaningful size bits and a/f is set 
 * iff the block is allocated. The list has the following form:
 *
 * begin                                                          end
 * heap                                                           heap  
 *  -----------------------------------------------------------------   
 * |  pad   | hdr(8:a) | ftr(8:a) | zero or more usr blks | hdr(8:a) |
 *  -----------------------------------------------------------------
 *          |       prologue      |                       | epilogue |
 *          |         block       |                       | block    |
 *
 * The allocated prologue and epilogue blocks are overhead that
 * eliminate edge conditions during coalescing.
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <memory.h>
#include "mm.h"
#include "memlib.h"
#include <math.h>

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
  /* Team name */
  "Mae Chen and Kaile Suoo",
  /* First member's full name */
  "Mae Chen",
  /* First member's email address */
  "mach6290@colorado.edu",
  /* Second member's full name (leave blank if none) */
  "Kaile Suoo",
  /* Second member's email address (leave blank if none) */
  "kasu8738@colorado.edu"
};

/////////////////////////////////////////////////////////////////////////////
// Constants and macros
//
// These correspond to the material in Figure 9.43 of the text
// The macros have been turned into C++ inline functions to
// make debugging code easier.
//
/////////////////////////////////////////////////////////////////////////////
#define WSIZE       4       /* word size (bytes) */  
#define DSIZE       8       /* doubleword size (bytes) */
#define CHUNKSIZE  (1<<12)  /* initial heap size (bytes) */
#define OVERHEAD    8       /* overhead of header and footer (bytes) */
#define LISTSIZE 32

static int custom_log(uint32_t memorySize) {
    int result = -1;
    while (memorySize > 0) {
        memorySize >>= 1;
        result++;
    }
    return result;
}

static int sizeToIndex(uint32_t memorySize) { return custom_log(memorySize); }

struct explicit_free_list
{
  struct explicit_free_list *next;
  struct explicit_free_list *prev;
};

struct explicit_free_list start[LISTSIZE];

static inline int MAX(int x, int y) {
  return x > y ? x : y;
}

//
// Pack a size and allocated bit into a word
// We mask of the "alloc" field to insure only
// the lower bit is used
//
static inline uint32_t PACK(uint32_t size, int alloc) {
  return ((size) | (alloc & 0x1));
}

//
// Read and write a word at address p
//
static inline uint32_t GET(void *p) { return  *(uint32_t *)p; }
static inline void PUT( void *p, uint32_t val)
{
  *((uint32_t *)p) = val;
}

//
// Read the size and allocated fields from address p
//
static inline uint32_t GET_SIZE( void *p )  { 
  return GET(p) & ~0x7;
}

static inline int GET_ALLOC( void *p  ) {
  return GET(p) & 0x1;
}

//
// Given block ptr bp, compute address of its header and footer
//
static inline void *HDRP(void *bp) {

  return ( (char *)bp) - WSIZE;
}
static inline void *FTRP(void *bp) {
  return ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE);
}

//
// Given block ptr bp, compute address of next and previous blocks
//
static inline void *NEXT_BLKP(void *bp) {
  return  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)));
}

static inline void* PREV_BLKP(void *bp){
  return  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)));
}

/////////////////////////////////////////////////////////////////////////////
//
// Global Variables
//

static char *heap_listp;  /* pointer to first block */ 

//
// function prototypes for internal helper routines
//
static void *extend_heap(uint32_t words);
static void place(void *bp, uint32_t asize);
static void *find_fit(uint32_t asize);
static void *coalesce(void *bp);
static void printblock(void *bp); 
static void checkblock(void *bp);
 

//
// mm_init - Initialize the memory manager 
//
int mm_init(void) 
{
  for (int i = 0; i < LISTSIZE; i++){
    start[i].next = start[i].prev = &start[i];
  }

  if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1){
    return -1;
  }
    
  PUT(heap_listp, 0);
  PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));
  PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));
  PUT(heap_listp + (3 * WSIZE), PACK(0, 1));    
  heap_listp += (2 * WSIZE);

  if (extend_heap(CHUNKSIZE / WSIZE) == NULL){
    return -1;
  }

  return 0;

}


//
// extend_heap - Extend heap with free block and return its block pointer
//
static void *extend_heap(uint32_t words) 
{
  //
  // You need to provide this
  //
    
    char *bp;
    size_t size;
    
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    
    if ((long)(bp = mem_sbrk(size)) == -1) {
        return NULL;
    }

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
    
    struct explicit_free_list *p2 = ((struct explicit_free_list *)coalesce(bp));
    
    add_node(p2, size);
    
    return (void *)p2;
}


//
// Practice problem 9.8
//
// find_fit - Find a fit for a block with asize bytes 
//
static void *find_fit(uint32_t asize)
{
  // return NULL; /* no fit */
    struct explicit_free_list *bp;
    
    for (int i = sizeToIndex(asize); i < LISTSIZE; i++){
      for (bp = start[i].next; bp != &start[i]; bp = bp->next){
        if (asize <= GET_SIZE(HDRP(bp))){
          return bp;
        }
      }
    }
    
    return NULL; /* no fit */
}

// 
// mm_free - Free a block 
//
void mm_free(void *bp)
{
  //
  // You need to provide this
  //
    
    size_t size = GET_SIZE(HDRP(bp));
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    struct explicit_free_list *p3 = ((struct explicit_free_list *)coalesce(bp));
    add_node(p3, size);

}

//
// coalesce - boundary tag coalescing. Return ptr to coalesced block
//
static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    
    if(prev_alloc && next_alloc) { return bp; }
    
    if (!prev_alloc && !next_alloc) {
        delete_node((struct explicit_free_list *)PREV_BLKP(bp));
        delete_node((struct explicit_free_list *)NEXT_BLKP(bp));
        size += (GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp))));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    else if (!prev_alloc && next_alloc) {
        delete_node((struct explicit_free_list *)PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    else if (prev_alloc && !next_alloc) {
        delete_node((struct explicit_free_list *)NEXT_BLKP(bp)); 
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }

    return bp;
}

//
// mm_malloc - Allocate a block with at least size bytes of payload 
//
void *mm_malloc(uint32_t size) 
{
  //
  // You need to provide this
  //
    size_t adjust_size;
    size_t extend_size;
    char* bp;
    
    size = MAX(size, sizeof(struct explicit_free_list));

    if (size == 0) {
        return NULL;
    }
    
    if (size <= DSIZE) {
        adjust_size = 2 * DSIZE;
    } 
    else {
        adjust_size = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
    }
    
    if ((bp = find_fit(adjust_size)) != NULL) {
        delete_node((struct explicit_free_list *)bp);
        place(bp, adjust_size);
        return bp;
    }
    
    extend_size = MAX(adjust_size, CHUNKSIZE);
    
    if ((bp = extend_heap(extend_size / WSIZE)) == NULL) {
        return NULL;
    }
    
    delete_node((struct explicit_free_list *)bp);
    place(bp, adjust_size);
    return bp;
} 

//
//
// Practice problem 9.9
//
// place - Place block of asize bytes at start of free block bp 
//         and split if remainder would be at least minimum block size
//
static void place(void *bp, uint32_t asize)
{
    int cur_size = GET_SIZE(HDRP(bp));
    int min = (sizeof(struct explicit_free_list) + OVERHEAD);
    
    if (cur_size - asize >= min) {
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(cur_size - asize, 0));
        PUT(FTRP(bp), PACK(cur_size - asize, 0));
        add_node(((struct explicit_free_list *)bp), (cur_size - asize));
    }
    else {
        PUT(HDRP(bp), PACK(cur_size, 1));
        PUT(FTRP(bp), PACK(cur_size, 1));
    }
}


//
// mm_realloc -- implemented for you
//
void *mm_realloc(void *ptr, uint32_t size)
{
  void *newp;
  uint32_t copySize;
  
  int min_size = MAX(size, sizeof(struct explicit_free_list)) + OVERHEAD;
  int size_block = GET_SIZE(HDRP(ptr));

  if (size_block == min_size){
    return ptr;
  }
  else if (size_block > min_size){
    place(ptr, size_block);
    return ptr;
  }

  newp = mm_malloc(size);
    
  if (newp == NULL){
    printf("ERROR: mm_malloc failed in mm_realloc\n");
    exit(1);
  }
    
  copySize = GET_SIZE(HDRP(ptr));

  if (size < copySize){
    copySize = size;
  }
    
  memcpy(newp, ptr, copySize);
  mm_free(ptr);
    
  return newp;
}

//
// mm_checkheap - Check the heap for consistency 
//
void mm_checkheap(int verbose) 
{
  //
  // This provided implementation assumes you're using the structure
  // of the sample solution in the text. If not, omit this code
  // and provide your own mm_checkheap
  //
  void *bp = heap_listp;
  
  if (verbose) {
    printf("Heap (%p):\n", heap_listp);
  }

  if ((GET_SIZE(HDRP(heap_listp)) != DSIZE) || !GET_ALLOC(HDRP(heap_listp))) {
	printf("Bad prologue header\n");
  }
    
  checkblock(heap_listp);

  for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
    if (verbose)  {
      printblock(bp);
    }
    checkblock(bp);
  }
     
  if (verbose) {
    printblock(bp);
  }

  if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp)))) {
    printf("Bad epilogue header\n");
  }
}

static void printblock(void *bp) 
{
  uint32_t hsize, halloc, fsize, falloc;

  hsize = GET_SIZE(HDRP(bp));
  halloc = GET_ALLOC(HDRP(bp));  
  fsize = GET_SIZE(FTRP(bp));
  falloc = GET_ALLOC(FTRP(bp));  
    
  if (hsize == 0) {
    printf("%p: EOL\n", bp);
    return;
  }

  printf("%p: header: [%d:%c] footer: [%d:%c]\n",
	 bp, 
	 (int) hsize, (halloc ? 'a' : 'f'), 
	 (int) fsize, (falloc ? 'a' : 'f')); 
}

static void checkblock(void *bp) 
{
  if ((uintptr_t)bp % 8) {
    printf("Error: %p is not doubleword aligned\n", bp);
  }
  if (GET(HDRP(bp)) != GET(FTRP(bp))) {
    printf("Error: header does not match footer\n");
  }
}

void add_node(struct explicit_free_list *node, uint32_t memorySize)
{
  struct explicit_free_list *p = &start[sizeToIndex(memorySize)];
  node->next = p->next;
  node->prev = p;
  p->next->prev = node;
  p->next = node;
}

void delete_node(struct explicit_free_list *p)
{
  p->next->prev = p->prev;
  p->prev->next = p->next;
  p->next = NULL;
  p->prev = NULL;
}




