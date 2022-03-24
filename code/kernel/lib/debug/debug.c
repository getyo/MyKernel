#include "debug.h"
#include "interrupt.h"
#include "data_type.h"
#include "console.h"
void panic_spin(const char * filename,int line,const char * func,const char * condition){
	enum int_status new_status = int_disable();  
	put_str("\n error !!!");put_str("\n");
	put_str("filename:"); put_str((char *)filename);put_char('\n');
	put_str("line:");put_int(line);put_char('\n');
	put_str("function:");put_str((char *)func);put_char('\n');
	put_str("condition:");put_str((char *)condition);put_char('\n');
	asm("hlt");
	set_int_status(new_status);
}

void debug_msg(const char * func,const char * msg,uint_32 var){
	put_str("function:");put_str((char *)func);put_char('\n');
	put_str(msg);put_int(var);put_char('\n');
}
