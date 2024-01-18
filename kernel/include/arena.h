#ifndef __ARENA__H__
#define __ARENA__H__
#include "data_type.h"
#include "global.h"
#include "smalloc.h"
#include "list.h"
#include "semaphore.h"

typedef struct {
	uint_32 type;	//描述符所管理的内存块大小
	uint_32 perarena_cnt;	//每个arena含有的内存块数目
	list freelist;	//空闲内存块链表
}mem_block_decs;

typedef struct{
	mem_block_decs * owner;	//此arena所属的描述符
	int_32 cnt;	//big = true：arena含有的页框数；\
			big = false： 已分配的内存块数目
	bool big;	//arena所管理的内存块是否大于1024byte
}arena;

typedef struct {
	list_node tag;
}mem_block;

#define MBLOCK_TYPE 7
mem_block_decs mdecs [MBLOCK_TYPE];

//返回medecs中链表元素所在arena
#define elem2arena(elem) ((uint_32)elem & 0xfffff000)
#endif
