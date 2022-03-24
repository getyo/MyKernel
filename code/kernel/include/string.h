#ifndef ___STRING__MEM__
#define ___STRING__MEM__
typedef char * va_list;
#define va_start(ptr,start) (uint_32 *)(ptr = start)
#define va_next(ptr) (uint_32 *)(ptr = ptr + 4)
#define va_end(ptr) (ptr = NULL)

void memset_8(void * start_addr,uint_32 size,uint_8 val);
void memset_32(void * start_addr,uint_32 size,uint_32 val);
void memcopy(void * d_addr,void * s_addr,uint_32 size);
int memcmp(void *o1,void *o2,uint_32 size);
uint_32 strlen(char * str);
char * strcat(char * res,char * s1,char * s2);
//返回格式化字符串str
char * formative_str(char * format,char * str,...);
#endif
