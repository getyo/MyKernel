#ifndef ___CONSOLE__HH__
#define ___CONSOLE__HH__
#include "print.h"
#include "semaphore.h"
struct mutex __print_lock;
void console_put_str(char *);
void console_put_char(char);
void console_put_int(uint_32);
void init_console();
#endif
