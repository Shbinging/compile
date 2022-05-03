#ifndef __list__
#define __list__
#include "../map/map.h"
#define listNode(T1, T2) struct listNode{\
    struct listNode* pre, *next;\
    T1* val;\
    T2* property;\
}

typedef struct listNodeTemplate{
    struct listNodeTemplate* pre, *next;
    void* val;
    void* property;
} listNodeTemplate;

typedef struct listHead{
    struct listNodeTemplate* head, *tail;
} listHead;

void createList(listHead*);
void push_front(listHead*, void*);
void push_back(listHead*, void*);
void* get_front(listHead*);
void* get_back(listHead*);
void pop_front(listHead*);
void pop_back(listHead*);
void insert(listHead*, void* pos, void* node);
void del(listHead*, void* pos);
void* find(listHead*, int(*)(void*));
#endif