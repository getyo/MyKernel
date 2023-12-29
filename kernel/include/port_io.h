#include "data_type.h"
#ifndef _PORT_IO__
#define _PORT_IO__

#define PORT_M_ICW1 0x20
#define PORT_S_ICW1 0xa0
#define PORT_M_ICW2 0x21
#define PORT_S_ICW2 0xa1
#define PORT_M_ICW3 0x21
#define PORT_S_ICW3 0xa1
#define PORT_M_ICW4 0x21
#define PORT_S_ICW4 0xa1
#define PORT_M_OCW1 0x21
#define PORT_S_OCW1 0xa1
#define PORT_M_OCW2 0x20
#define PORT_S_OCW2 0xa0

//注意这里的汇编语法为AT&A
static inline uint_8 read_port(uint_16 port){
	uint_8 data;
	asm volatile("in %w1,%b0":"+a"(data):"d"(port));
	return data;
}

static inline void read_stream(uint_16 port,void * start_addr,uint_32 size){
	asm volatile("cld; rep insb":"+D"(start_addr),"+c"(size):"d"(port));
}

//size是以字为单位，1字=2字节
static inline void read_wordstream(uint_16 port,void * start_addr,uint_32 size){
	asm volatile("cld; rep insw":"+D"(start_addr),"+c"(size):"d"(port):"memory");
}

static inline void write_port(uint_16 port,uint_32 data){
	asm volatile("out %b1,%w0": :"d"(port),"a"(data));
}

//将从起始地址开始的n字节数据写入port
static inline void write_stream(uint_16 port,void * start_addr,uint_32 size){
	asm volatile("cld; rep outsb": "+S"(start_addr),"+c"(size):"d"(port));
}

//size是以字为单位，1字=2字节
static inline void write_wordstream(uint_16 port,void * start_addr,uint_32 size){
	asm volatile("cld; rep outsw":"+S"(start_addr),"+c"(size):"d"(port));
}

#endif
