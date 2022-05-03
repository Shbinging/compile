#ifndef __list__
#define __list__
#include "../map/map.h"
#define listNode(T1, T2, T3) struct T3{\
    struct T3* pre, *next;\
    T1* val;\
    T2* property;\
}

typedef struct listNodeTemplate{
    struct listNodeTemplate* pre, *next;
    void* val;
    void* property;
} listNodeTemplate;

typedef struct listHead{
    void* head, *tail;
} listHead;

typedef struct listHeadTemplate{
    listNodeTemplate* head, *tail;
} listHeadTemplate;

void createList(void**);
void push_front(void*, void*);
void push_back(void*, void*);
void* get_front(void*);
void* get_back(void*);
void pop_front(void*);
void pop_back(void*);
void insert(void*, void* pos, void* node);
void del(void*, void* pos);
void* find(void*, int(*)(void*));
void append_list(void* a, void* b);
#endif