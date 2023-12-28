#include "process.h"

uint_32 getpid()
{
	return syscall0(SYS_GETPID);
}
