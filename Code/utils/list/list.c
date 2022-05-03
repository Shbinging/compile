#include"list.h"
#include "assert.h"
#define toTem listNodeTemplate* nodeUse = (listNodeTemplate*) node

void createList(listHead** lst){
    *lst = malloc(sizeof(lst));
    assert(*lst != NULL);
    (*lst)->head = NULL;
    (*lst)->tail = NULL;
}

void push_front(listHead* lst, void* node){
    toTem;
    nodeUse->next = lst->head;
    nodeUse->pre = NULL;
    if (lst->head) lst->head->pre = nodeUse;
    if (!lst->tail) lst->tail = nodeUse;
    lst->head = nodeUse;   
}

void push_back(listHead* lst, void* node){
    toTem;
    nodeUse->pre = lst->tail;
    nodeUse->next = NULL;
    if (lst->tail) lst->tail->next = nodeUse;
    if (!lst->head) lst->head = nodeUse;
    lst->tail = nodeUse;
}


void* get_front(listHead* lst){
    return lst->head;
}

void* get_back(listHead* lst){
    return lst->tail;
}

void pop_front(listHead* lst){
    if (lst->head == lst->tail){
        lst->head = NULL;
        lst->tail = NULL;
    }else{
        lst->head = lst->head->next;
        lst->head->pre = NULL;
    }
}

void pop_back(listHead* lst){
    if (lst->head == lst->tail){
        lst->head = NULL;
        lst->tail = NULL;
    }else{
        lst->tail = lst->tail->pre;
        lst->tail->next = NULL;
    }
}

void insert(listHead* lst, void* pos, void* node){//TODO

}
void del(listHead*lst , void* pos){//TODO

}
void* find(listHead* lst , int(*func)(void*)){//TODO

}


void append_list(listHead* a, listHead* b){
    if (a->tail && b) a->tail->next = b->head;
    if (b && b->head && a) b->head->pre = a->tail;
    if (b) a->tail = b->tail;
}
