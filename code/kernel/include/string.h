#ifndef ___STRING__MEM__
#define ___STRING__MEM__
void memset_8(void * start_addr,uint_32 size,uint_8 val);
void memset_32(void * start_addr,uint_32 size,uint_32 val);
void memcopy(void * d_addr,void * s_addr,uint_32 size);
int memcmp(void *o1,void *o2,uint_32 size);
uint_32 strlen(char * str);
#endif
