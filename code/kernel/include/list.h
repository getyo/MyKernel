#ifndef __LIST__H__
#define __LIST__H__
#include "interrupt.h"
#include "data_type.h"
//定义一个以链队
struct list_head{
	struct list_node * tail;
	struct list_node * head;
};

typedef struct list_head list;

struct list_node{
	struct list_node * next;
	struct list_node * pre;
};

typedef struct list_node list_node;

struct list_head * init_list(struct list_head * queue);
void lst_push(struct list_head *,struct list_node *);
struct list_node * lst_pop(struct list_head *);
int lst_find(struct list_head *,struct list_node * node);
void lst_remove(struct list_head *,struct list_node * node);
void lst_head_insert(struct list_head * l,struct list_node * node);
bool lst_empty(struct list_head * head);
//以该动作编历链表
void lst_traverse(list * l,void action());
#endif
