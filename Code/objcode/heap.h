#ifndef __heap__

#define __heap__


typedef struct heapNode_{
    int key;
    void* val;
}heapNode_;

typedef heapNode_* heapNode;
typedef struct heap_
{
    int n;
    heapNode a;
}heap_;
typedef heap_* heap;


void init_heap(heap* hh, int size);
void push_h(heap h, int key, void* val);
void swap(heapNode a, heapNode b);
void down_h(heap h);
void up_h(heap h);
int empty_h(heap h);
heapNode pop_h(heap h);
heapNode top_h(heap h);
#endif