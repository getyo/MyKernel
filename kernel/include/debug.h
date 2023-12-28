#include "print.h"
#include "stdio_k.h"
#ifndef __KERNEL_DEBUG__
#define __KERNEL_DEBUG__
extern void panic_spin(const char * filename,int line,const char * func,const char * condition);
extern void debug_msg(const char * func,const char * msg,uint_32 var);
#define __PANIC__(...) panic_spin(__FILE__,__LINE__,__func__,__VA_ARGS__)

#ifndef __DISABLE_DEBUG_MODE__
#define ASSERT(condition) \
	if(condition == 0) {\
	  __PANIC__(#condition);\
	}
#else
	#define ASSRET(condition) ((void)0)
#endif

#ifndef __DISABLE_DEBUG_MODE__
#define DEBUG_MSG(info,var) \
	debug_msg(__func__,info,var);
#endif
#define __F put_str(__func__);put_char('\n');
#endif

#ifndef __DISABLE_DEBUG_MODE__
#define printk(format,...) __printk(format,##__VA_ARGS__)
#else
	#define printk(condition) ((void)0)
#endif
