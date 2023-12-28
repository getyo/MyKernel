#ifndef __BitMap__H__
#define __BitMap__H__

#include "data_type.h"
struct BitMap{
	uint_32 size;	//这里的size并不是位图的实际大小，而是位图含有多少个位
			//就数值上来说，这里的size是pool中的size/4K,即池中有多少页
	void * map;
};
typedef struct BitMap bitmap;
void init_bit_map(struct BitMap * bp);
//测试第index位是否为1
int bit_test(struct BitMap * bit_map,uint_32 index);
//将index的位置1,返回原来的值
int bit_set(struct BitMap * bp,uint_32 index);
//将index的位清0,返回原来的值
int bit_reset(struct BitMap * bp,uint_32 index);
//在bp中寻找n个连续不为1的位，如果有返回位标，并将其置为1,否则返回-1
int bit_alloc(struct BitMap * bp,uint_32 size);
//释放从index开始的size个位置，如果出现已经被释放的位置，返回-1
//成功返回结束下标
int bit_free(struct BitMap * bp,uint_32 index,uint_32 size);
#endif
