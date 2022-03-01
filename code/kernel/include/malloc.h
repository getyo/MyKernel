#ifndef __MALLOC___H__
#define __MALLOC___H__
#include "pool.h"
#include "arena.h"
enum pool_flags
{
	KERNEL_F = 1,
	USER_F = 2,
};

typedef enum pool_flags pool_flags;

void * alloc_vaddr(enum pool_flags f,int page_cnt);
void * alloc_mem(enum pool_flags f);
//以页为大小分配内存，返回内存指针，如果失败返回NULL
void *malloc_page(enum pool_flags f,uint_32 page_cnt);
//释放从start_bit_index开始的size个位，如果这些位中含有原来不为1的位，返回该位位标
//否则返回0
uint_32 free_pool(struct pool * p,uint_32 start_bit_index,uint_32 size);
//以页为大小分配内存，返回内存指针，如果失败返回NULL
void * malloc_page(enum pool_flags f,uint_32 page_cnt);
//释放虚拟指定内存池对应虚拟地址，失败返回0，成功返回1
int free_page(enum pool_flags f,void * vaddr,uint_32 page_cnt);
//在指定的地址创建1页，如果创建失败返回0
bool create_page(pool_flags f,void * addr);
//在指定虚拟地址创建一页，失败返回0
bool create_vaddr(pool_flags f,void * vaddr);

//堆内存管理
//初始化内存描述符数组
void mem_decs_init (mem_block_decs * decs);
//返回需求的内存
void* sys_malloc(uint_32 size);
//释放所指向的内存
//void sys_free(void * m);
//将新建的arena划分内存块，并将内存块入库
void mblock_cut(arena * a,uint_32 size);
#endif
