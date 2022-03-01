#ifndef __STDIO__HH__
#define __STDIO__HH__
#include "syscall.h"

typedef char * va_list;
#define va_start(ptr,start) (uint_32 *)(ptr = start)
#define va_next(ptr) (uint_32 *)(ptr = ptr + 4)
#define va_end(ptr) (ptr = NULL)

#define NEG 0x80000000

char str_buff[1024];

void printf(char * format,...);
//将格式串修正为要输出的字符串，并保存到str_buff中
size_t vsprintf(char * str_buff,char *format,va_list va);
//有符号16进制转化
void hex_to_ascii(char * *str,uint_32 h);
//十进制转化，带符号
void dec_to_ascii(char * * str,uint_32 h);
//无符号数转化，都是16进制
void unsign_to_ascii(char * * str,uint_32 h);
#endif
