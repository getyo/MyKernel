#include "console.h"

void init_console(){
	init_mutex(&__print_lock);
}

void console_put_str(char * str){
	lock(&__print_lock);
	put_str(str);
	unlock(&__print_lock);
}

void console_put_char(char c){
	lock(&__print_lock);
	put_char(c);
	unlock(&__print_lock);
}

void console_put_int(uint_32 n){
	lock(&__print_lock);
	put_int(n);
	unlock(&__print_lock);
}
