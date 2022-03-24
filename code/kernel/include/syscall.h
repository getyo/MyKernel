#ifndef __SYS__CALL__
#define __SYS__CALL__
#include "data_type.h"

#define syscall0(VEC)({ \
	int retval;\
	asm volatile(\
	"pushl %1;\
	int $0x80; add $4,%%esp;"\
	:"=a"(retval)\
	:"i"(VEC)\
	:"memory"\
	);\
	retval;\
	})

#define syscall1(vec,arg1)({\
	int retval;\
	asm volatile(\
	"pushl %2;pushl %1;\
	int $0x80; add $8,%%esp"\
	:"=a"(retval)\
	:"i"(vec),"g"(arg1)\
	:"memory");\
	retval;\
	})
	
#define syscall2(vec,arg1,arg2)({\
	int retval;\
	asm volatile(\
	"pushl %3;pushl %2;pushl %1;\
	int $0x80; add $12,%%esp;"\
	:"=a"(retval)\
	:"i"(vec),"g"(arg1),"g"(arg2)\
	:"memory");\
	retval;\
	})
	
#define syscall3(vec,arg1,arg2,arg3)({\
	int retval;\
	asm volatile(\
	"pushl %4;pushl %3;pushl %2;pushl %1;\
	int $0x80; add $16,%%esp;"\
	:"=a"(retval)\
	:"i"(vec),"g"(arg1),"g"(arg2),"g"(arg3)\
	:"memory");\
	retval;\
	})

#define CALLNUM 10
#define SYS_GETPID 0
#define SYS_WRITE 1
#define SYS_MALLOC 2
#define SYS_FREE 3

void syscall_table_init();
//第0号系统调用，获取当前运行的线程id
uint_32 static sys_getPid();
uint_32 static sys_write();
#endif
