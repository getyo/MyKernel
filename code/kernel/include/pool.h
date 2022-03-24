#ifndef __POOL__HH__
#define __POOL__HH__
#include "data_type.h"
#include "bitmap.h"


struct pool {
	struct BitMap bit_map;
	uint_32 start_addr;
	uint_32 size;	//size的意义是pool管理着多少字节的内存
};
typedef struct pool pool;

struct pool kernel_pool,user_pool;
struct pool kernel_vaddr;
void init_pool();
void * get_pde_ptr(uint_32 vaddr);
void * get_pte_ptr(uint_32 vaddr);
void * add_pte(uint_32 vaddr,uint_32 paddr,uint_8 attr);
int reset_pte(uint_32 vaddr);
uint_32 get_paddr(uint_32 vaddr);
#endif
