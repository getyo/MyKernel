#include "malloc.h"

void * malloc(size_t size){
	return syscall1(SYS_MALLOC,size);
}

void free(void * m){
	syscall1(SYS_FREE,m);
	return;
}
