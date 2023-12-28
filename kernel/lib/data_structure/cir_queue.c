#include "cir_queue.h"

cir_queue init_cq(cir_queue * cq){
	memset_8(cq->buffer,BUFF_SIZE,0);
	cq->head = 0;
	cq->tail = 0;
}
//为了后续符合使用习惯，这里的入队和出队并不负责越界检查
//需要自己利用full和empty保证
void cq_push(cir_queue * cq,char c){
	cq->buffer[cq->tail] = c;
	cq->tail = (cq->tail + 1) % BUFF_SIZE;
}

char cq_pop(cir_queue * cq){
	char c = cq->buffer[cq->head];
	cq->head = (cq->head + 1) % BUFF_SIZE;
	return c;
}

bool cq_full(cir_queue * cq){
	return ((cq->tail + 1) % BUFF_SIZE == cq->head);
}

bool cq_empty(cir_queue * cq){
	return cq->tail == cq->head;
}
