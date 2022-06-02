#include"list.h"
#include "assert.h"
#define toTem listNodeTemplate* nodeUse = (listNodeTemplate*) node;\
listHeadTemplate* lst = lst1

void createList(void** lst1){
    listHeadTemplate** lst = lst1;
    *lst = malloc(sizeof(lst));
    assert(*lst != NULL);
    (*lst)->head = NULL;
    (*lst)->tail = NULL;
}

void push_front(void* lst1, void* node){
    toTem;
    nodeUse->next = lst->head;
    nodeUse->pre = NULL;
    if (lst->head) lst->head->pre = nodeUse;
    if (!lst->tail) lst->tail = nodeUse;
    lst->head = nodeUse;   
}

void push_back_use(void*lst1, size_t size, void* val){
    listNodeTemplate* nodeUse = malloc(size);
    nodeUse->val = val;
    push_back(lst1, nodeUse);
}

void push_back(void* lst1, void* node){
    toTem;
    nodeUse->pre = lst->tail;
    nodeUse->next = NULL;
    if (lst->tail) lst->tail->next = nodeUse;
    if (!lst->head) lst->head = nodeUse;
    lst->tail = nodeUse;
}


void* get_front(void* lst1){
    listHeadTemplate* lst = lst1;
    return lst->head;
}

void* get_back(void* lst1){
    listHeadTemplate* lst = lst1;
    return lst->tail;
}

void pop_front(void* lst1){
    listHeadTemplate* lst = lst1;
    if (lst->head == lst->tail){
        lst->head = NULL;
        lst->tail = NULL;
    }else{
        lst->head = lst->head->next;
        lst->head->pre = NULL;
    }
}

void pop_back(void* lst1){
    listHeadTemplate* lst = lst1;
    if (lst->head == lst->tail){
        lst->head = NULL;
        lst->tail = NULL;
    }else{
        lst->tail = lst->tail->pre;
        lst->tail->next = NULL;
    }
}

void insert(void* lst1, void* pos1, void* node1){//TODO
    listHeadTemplate* lst = lst1;
    listNodeTemplate* pos = pos1;
    listNodeTemplate* node = node1;
    if (pos1 == NULL){
        push_front(lst, node1);
        return;
    }
    if (lst->tail == pos) push_back(lst, node1);
    else{
        node->next = pos->next;
        pos->next->pre = node;
        node->pre = pos;
        pos->next = node;
    }
}

void del(void*lst1 , void* pos1){//TODO
    listHeadTemplate* lst = lst1;
    listNodeTemplate* pos = pos1;
    if (lst->head == pos){
        pop_front(lst);
        return;
    }
    if (lst->tail == pos){
        pop_back(lst);
        return;
    }
    pos->pre->next = pos->next;
    pos->next->pre = pos->pre;
}

void* find(void* lst1 , int(*func)(void*)){//TODO

}


void append_list(void* a1, void* b1){
    listHeadTemplate* a = a1, *b = b1;
    if (a && b){
        if (a->head == NULL){
            a->head = b->head;
            a->tail = b->tail;
        }else if (b->head){
            a->tail->next = b->head;
            b->head->pre = a->tail;
            a->tail = b->tail;
        }
    }
}


void* getIndex_l(void* a, int index){
    listHeadTemplate* aa = a;
    for(listNodeTemplate* item = aa->head; item; item = item->next){
        if (!index){
            return item;
        }
        index--;
    }
    return NULL;
}