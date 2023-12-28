#ifndef __CIR_QUEUQ_H__
#define __CIR_QUEUQ_H__

#include "data_type.h"
#define BUFF_SIZE 160
typedef struct{
	char buffer [BUFF_SIZE];
	uint_8 head;
	uint_8 tail;
}cir_queue;

cir_queue init_cq(cir_queue * cq);
//为了后续符合使用习惯，这里的入队和出队并不负责越界检查
//需要自己利用full和empty保证
void cq_push(cir_queue * cq,char c);
char cq_pop(cir_queue * cq);
bool cq_full(cir_queue * cq);
bool cq_empty(cir_queue * cq);

#endif
