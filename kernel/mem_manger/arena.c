#include "arena.h"

arena * elem2arena(list_node  * elem)
{
	return elem & PAGE_SIZE;
}
