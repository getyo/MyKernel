#include "list.h"
#include "data_type.h"
#include "debug.h"
struct list_head * init_list(struct list_head * queue){
	queue->head = NULL;
	queue->tail = NULL;
}

void lst_push(struct list_head * queue,struct list_node *node){
	//DEBUG_MSG("",0);
	ASSERT(node != NULL);
	ASSERT(!lst_find(queue,node));
	enum int_status new_status = int_disable(); 
	if(queue->head == NULL){
		queue->head = node;
		queue->tail = node;
		node->pre = NULL;
		node->next = NULL;
	}
	else{
		//DEBUG_MSG("head = ",queue->head);
		node->pre = queue->tail;
		queue->tail->next = node;
		node->next = NULL;
		queue->tail = node;
	}
	ASSERT(queue->tail == node && lst_find(queue,node));
	set_int_status(new_status);
}

struct list_node * lst_pop(struct list_head * queue){
	//DEBUG_MSG("",0);
	ASSERT(queue->head != NULL);
	enum int_status new_status = int_disable();
	if(queue->head == NULL) return NULL;
	//DEBUG_MSG("head = ",queue->head);
	struct list_node * prehead = queue->head;
	queue->head = queue->head->next;
	prehead->pre = NULL;
	prehead->next = NULL;
	if(queue->head != NULL) {
		ASSERT(queue->head->pre == prehead);
		queue->head->pre = NULL;
	}
	set_int_status(new_status);
	return prehead;
}

int lst_find(struct list_head * l,struct list_node * node){
	ASSERT(node != NULL);
	struct list_node * it = l->head;
	//DEBUG_MSG("the head is ",l->head);
	while(it != node && it != NULL) it = it->next;
	//DEBUG_MSG("the it is ",it);
	if(it == NULL) return 0;
	else return 1; 
}

void lst_remove(struct list_head * l,struct list_node * node){
	//DEBUG_MSG("",0);
	if(!l->head) return;
	ASSERT(lst_find(l,node));
	ASSERT(node != NULL);
	struct list_node * pre = node->pre;
	struct list_node * next = node->next;
	if(pre == NULL){
		l->head = next;
		if(l->head)l->head->pre = NULL;
	}
	else{
		pre->next = next;
		if(pre) next->pre = pre;
	}
	node->pre = NULL;
	node->next = NULL;
}

void lst_head_insert(struct list_head * l,struct list_node * node){
	ASSERT(!lst_find(l,node));
	ASSERT(node != NULL);
	if(l->head == NULL){ 
		l->head = l->tail = node;
		node->pre = NULL;
		node->next = NULL;
	}
	else{
		l->head->pre = node;
		node->next = l->head;
		node->pre = NULL;
		l->head = node;
	}
	ASSERT(l->head == node);
}

bool lst_empty(struct list_head * list){
	return (list->head == NULL);
}

void lst_traverse(list * l,bool action(list_node *,uint_32 arg),uint_32 arg)
{
	list_node * i = l->head;
	if (!i) printk("list is empty\n");
	bool res = true;
	while(i != NULL && res){
		res = action(i,arg);
		i = i->next;
	}
}









