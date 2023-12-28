#include "bitmap.h"
#include "data_type.h"
#include "debug.h"
#include "print.h"
#include "string.h"
#define MASK 0x80
#define FF 0xff

//初始化位图
void init_bit_map(struct BitMap * bp){
	memset(bp->map,bp->size,0);
}

//测试第index位是否为1
int bit_test(struct BitMap * bit_map,uint_32 index){
	ASSERT(index <= bit_map->size);
	int offset = index/8;
	uint_8 test_byte = *(uint_8 *)(bit_map->map + offset);
	int n = index%8;
	return (test_byte & MASK >> n) == 0 ? 0:1;
}

//将index的位置1,返回原来的值
int bit_set(struct BitMap * bp,uint_32 index){
	ASSERT(index <= bp->size);
	int val = bit_test(bp,index);
	if(val == 1) return 1;
	int n = index%8,offset = index/8;
	*(uint_8 *)(bp->map + offset) = *(uint_8 *)(bp->map + offset) ^ (MASK >> n);
	return 0;
}

//将index的位清0,返回原来的值
int bit_reset(struct BitMap * bp,uint_32 index){
	ASSERT(index <= bp->size);
	int val = bit_test(bp,index);
	if(val == 0) return 0;
	int n = index%8,offset = index/8;
	//将第n位后的内容保留下来
	//因为默认位标从高位是0开始算起，为了计算方便将其置为1，即高位位标为1
	n++;
	uint_32 lf = *(uint_8 *)(bp->map + offset) & (FF << 8-n+1);
	//第n位与移位后产生的0与，n位前与1与
	*(uint_8 *)(bp->map + offset) = *(uint_8 *)(bp->map + offset) & (0xff >> n);
	//恢复n位后的内容
	*(uint_8 *)(bp->map + offset) = *(uint_8 *)(bp->map + offset) ^ lf;

	return 1;
}

//在bp中寻找n个连续不为1的位，如果有返回位标，并将其置为1,否则返回-1
//实际为kmp算法
int bit_alloc(struct BitMap * bp,uint_32 size){
	//由于要寻找的模式串全是0，所以模式串的会回退很简单，
	//直接不匹配的话从最开始重新匹配即可
	int i = 0,j = 0;
	while(1){
		if(!bit_test(bp,j)) i++,j++;
		else i = 0,j++;
		
		if(i >= size || j >= bp->size)break;
	}
	if(i >= size){
		int t = 0;
		for(;t < size;t++) bit_set(bp,t + j - i);
		return j-i;
	}
	else return -1;
}


















