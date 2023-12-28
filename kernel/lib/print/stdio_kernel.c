#include "stdio.h"
#include "console.h"

//实现内核下的格式化输出
void __printk(char * format,...)
{
	va_list va;
	va_start(va,&format);
	vsprintf(str_buff,format,va);
	console_put_str(str_buff);
}
