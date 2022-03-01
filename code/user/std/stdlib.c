#include "stdlib.h"

void * malloc(size_t size){
	return syscall1(SYS_MALLOC,size);
}
