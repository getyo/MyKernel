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

//list_node的子类
typedef struct list_with_member{
	struct list_node * next;
	struct list_node * pre;
	void * member;
}list_with_member;

typedef struct list_node list_node;
typedef bool cmp_fun_type (list_node * tag,uint_32 arg);
typedef void free_fun (list_node * tag);
typedef list_with_member lwm;

struct list_head * init_list(struct list_head * queue);
void lst_push(struct list_head *,struct list_node *);
struct list_node * lst_pop(struct list_head *);
int lst_find(struct list_head *,struct list_node * node);
void lst_remove(struct list_head *,struct list_node * node);
void lst_head_insert(struct list_head * l,struct list_node * node);
bool lst_empty(struct list_head * head);
//以该动作编历链表
//action返回false继续遍历，否则停止遍历并返回该元素 
//即找到第一个为真的元素返回	
list_node * lst_traverse(list * l,bool action(list_node *,uint_32 arg),uint_32 arg);
//返回第一个满足比较器（比较器函数返回true）的节点
list_node * lst_find_elem(list * l,cmp_fun_type compareor,uint_32 arg);
//在第一个满足比较器的节点之前插入tag
list_node * lst_insert_elem(list * l,list_node * tag,cmp_fun_type compareor,uint_32 arg);
//移除第一个满足比较器的节点，如果没有满足元素的节点则返回false
bool lst_remove_elem(list * l,cmp_fun_type compareor,uint_32 arg);

lwm* lwm_find(list * l,void *member);
void lwm_push(list * l,void * member);
void lwm_remove(list * l,void * member);
void* lwm_pop(list * l);
void lwm_head_insert(list * l,void * member);
void lwm_free(list * l);
#define lwm_empty(l)	(lst_empty(l))

#endif
