#include "data_type.h"
#include "debug.h"
#include "string.h"

extern size_t vsprintf(char * str_buff,char *format,va_list va);

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

int strcmp(char * s1,char * s2){
	char * c1 = s1,* c2 = s2;
	int diff;
	while(*c1 && *c2){
		diff = *c1 - *c2;
		if(diff) return diff;
		++c1,++c2;
	}
	if(!*c1 && *c2) return -1;
	else if(*c1 && *c2) return 1;
	else return 0;
	
}

uint_32 strlen(char * str){
	uint_32 len = 0;
	while(*(str++) != '\0') ++len;
	return len;
}

char * strcat(char * res,char * s1,char * s2)
{
	uint_32 len1 = strlen(s1);
	uint_32	len2 = strlen(s2);
	memcopy(res,s1,len1-1);
	memcopy(res + len1 - 1,s2,len2);
	return res;
}

//返回格式化字符串str
char * formative_str(char * buf,char * format,...)
{
	va_list va;
	va_start(va,&format);
	vsprintf(buf,format,va);
	return buf;
}
