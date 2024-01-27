#ifndef _DATA_TYPE__
#define _DATA_TYPE__
typedef signed char int_8;
typedef signed short int_16;
typedef signed int int_32;
typedef unsigned char uint_8;
typedef unsigned short uint_16;
typedef unsigned int uint_32;
typedef unsigned long long uint_64;
typedef long long int_64;
typedef uint_32 size_t;
enum bool{
	false = 0,true = 1
};
typedef enum bool bool;
//64位无符号数最大值
#define NULL (void *)0x0
//向上取整
#define DIV_UP(n,m) ((n-1)/m+1)
#endif

