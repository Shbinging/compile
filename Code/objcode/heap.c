#include"heap.h"

void init_heap(heap* hh, int size){
    *hh = malloc(sizeof(heap_));
    heap h = *hh;
    h->n = 0;
    h->a = malloc((size + 2) * sizeof(heapNode_));
}

void push_h(heap h, int key, void* val){
    h->n++;
    h->a[h->n].key = key;
    h->a[h->n].val = val;
    up_h(h);
}

void swap(heapNode a, heapNode b){
    heapNode tmp = malloc(sizeof(heapNode_));
    tmp->key = a->key;
    tmp->val = a->val;
    a->key = b->key;
    a->val = b->val;
    b->key = tmp->key;
    b->val = tmp->val;
}

void down_h(heap h){
    int i = 1;
    int n = h->n;
    heapNode a = h->a;
    while(i * 2 <= n){
        if (a[i].key > a[i * 2].key){
            swap(&a[i], &a[i * 2]);
        }
        if (i * 2 + 1 <= n && a[i].key > a[i * 2 + 1].key){
            swap(&a[i], &a[i * 2 + 1]);
        }
    }
}

void up_h(heap h){
    int n = h->n;
    heapNode a = h->a;
    while(n > 1){
        if (a[n / 2].key > a[n].key){
            swap(&a[n], &a[n / 2]);
        }
        n /= 2;
    }
}

int empty_h(heap h){
    return h->n == 0;
}

heapNode pop_h(heap h){
    if (empty_h(h)) return 0;
    heapNode hh =  malloc(sizeof(heapNode_));
    heapNode a = h->a;
    hh->key = h->a[1].key;
    hh->val = h->a[1].val;
    swap(&a[1], &a[h->n]);
    h->n--;
    down_h(h);
    return hh;
}

heapNode top_h(heap h){
    return h->a + 1;
}