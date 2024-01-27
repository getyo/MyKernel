#include "list.h"
#include "data_type.h"
#include "debug.h"
#include "thread.h"
struct list_head * init_list(struct list_head * queue){
	queue->head = NULL;
	queue->tail = NULL;
}

void lst_push(struct list_head * queue,struct list_node *node){
	ASSERT(node != NULL);
	ASSERT(!lst_find(queue,node));
	enum int_status new_status = int_disable(); 
	if(queue->head == NULL){
		ASSERT(queue->tail ==  NULL);
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
	/*
	if(get_running() == 0x9e000 && !lst_find(queue,node)){
		printk("node:0x%x\n",node);
	}
	*/
	ASSERT(queue->tail == node && lst_find(queue,node));
	set_int_status(new_status);
}

struct list_node * lst_pop(struct list_head * queue){
	//DEBUG_MSG("",0);
#ifdef __DEBUG__
	ASSERT(queue->head != NULL);
#endif
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
		if(queue->tail == prehead) 
			queue->tail = queue->head;
	}
	else queue->tail = NULL;
#ifdef __DEBUG__
	ASSERT(!lst_find(queue,prehead));
#endif
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
		if(l->head) l->head->pre = NULL;
		else l->tail = NULL;
	}
	else{
		pre->next = next;
		if(next) next->pre = pre;
		else	l->tail = pre;
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

list_node * lst_traverse(list * l,bool action(list_node *,uint_32 arg),uint_32 arg)
{
	list_node * i = l->head;
	//if (!i) printk("list is empty\n");
	bool res = false;
	while(i != NULL){
		if(action(i,arg))
			return i;
		i = i->next;
	}
	return i;
}

//返回第一个满足比较器（比较器函数返回true）的节点
list_node * lst_find_elem(list * l,cmp_fun_type compareor,uint_32 arg){
	return lst_traverse(l,compareor,arg);
}

//在第一个满足比较器的节点之前插入tag
list_node * lst_insert_elem(list * l,list_node * tag,cmp_fun_type compareor,uint_32 arg){
	list_node * n = lst_find_elem(l,compareor,arg);
	//没有的话就在头节点插入	
	if(n == NULL) {
		lst_head_insert(l,tag);
	}
	//在一个满足条件的节点之前插入元素
	if(n->pre == NULL){
		//如果返回的第一个节点
		l->head = tag;
	}
	tag->pre = n->pre;
	tag->next = n;
	n->pre = tag;
	return tag;
}

//移除第一个满足比较器的节点，如果没有满足元素的节点则返回false
bool lst_remove_elem(list * l,cmp_fun_type compareor,uint_32 arg){
	list_node * n = lst_find_elem(l,compareor,arg);
	if(n == NULL) return false;
	else{
		lst_remove(l,n);
		return true;
	}
}

void lst_free_elem(list * l,free_fun f){
	list_node * it;
	while(!lst_empty(l)){
		it = lst_pop(l);
		f(it);
	}	
}


