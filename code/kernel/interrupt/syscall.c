#include "syscall.h"
#include "thread.h"
#include "console.h"
void * syscall_table[CALLNUM];
extern void* sys_malloc(uint_32 size);

void syscall_table_init()
{
	syscall_table[0] = sys_getPid;
	syscall_table[1] = sys_write;
	syscall_table[2] = sys_malloc;
}

//第0号系统调用，获取当前运行的线程id
uint_32 static sys_getPid(){
	return get_running()->id;
}


//输出
uint_32 static sys_write(char * str){
	console_put_str(str);
	return strlen(str);
}

