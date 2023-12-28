#include "print.h"
#ifndef __PUT_STRING__
#define __PUT_STRING__
void put_str(char * s){
	while(*s != '\0'){
		put_char(*s);
		s++;	
	}
}
#endif
