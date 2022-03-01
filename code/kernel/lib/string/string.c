#include "data_type.h"
#include "debug.h"
#include "string.h"

void memset_8 (void * start_addr,uint_32 size,uint_8 val){
	ASSERT( start_addr != NULL);
	//DEBUG_MSG(" start_addr : ",(uint_32)start_addr);
	//DEBUG_MSG(" val : ",(uint_32)val);
	uint_32 i = 0;
	uint_8 * ad = (uint_8 *)start_addr;
	for(;i < size;i++)
		*(ad++) = val;  
}

void memset_32 (void * start_addr,uint_32 size,uint_32 val){
	ASSERT( start_addr != NULL);
	//DEBUG_MSG(" start_addr : ",(uint_32)start_addr);
	//DEBUG_MSG(" val : ",(uint_32)val);
	uint_32 i = 0;
	uint_32 * ad = (uint_32 *)start_addr;
	for(;i < size;i++)
		*(ad++) = val;  
}

void memcopy(void * d_addr,void * s_addr,uint_32 size){
	ASSERT(d_addr != NULL && s_addr != NULL);
	uint_32 i = 0;
	uint_8 * dd = (uint_8 *) d_addr, * sd = (uint_8 *) s_addr;
	for(;i < size;++i){
		//DEBUG_MSG("dd = ",dd);DEBUG_MSG("sd = ",sd);DEBUG_MSG("i = ",i);
		*(dd++) = *(sd++);
	}
}

//将o1开始的size个字节与o2进行无符号比较，等于返回0，大于返回1，小于返回-1
//比较方式同字符串比较
int memcmp(void *o1,void *o2,uint_32 size){
	int i;
	for(i = 0;i < size;i++){
		if(*(uint_8*)o1 < *(uint_8*)o2) return -1;
		else if(*(uint_8*)o1 > *(uint_8*)o2) return 1;
	}
	return 0;
}

uint_32 strlen(char * str){
	uint_32 len = 0;
	while(*str != '\0') ++len;
	return len;
}



