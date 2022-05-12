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

void insert(void* lst1, void* pos, void* node){//TODO

}
void del(void*lst1 , void* pos){//TODO

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
