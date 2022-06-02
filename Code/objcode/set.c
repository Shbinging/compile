#include "set.h"

char* itoa(int num){
    int n = num, s = 0;
    if (n == 0){
        char* tmp = malloc(2);
        tmp[0] = '0';
        tmp[1] = 0;
        return tmp;
    }else{
        while(n){
            s++;
            n /= 10;
        }
        n = num;
        char* tmp = malloc(s + 1);
        tmp += s;
        *tmp = 0;
        while(n){
            tmp--;
            *tmp = (n % 10) + '0';
            n /= 10;
        }
        return tmp;
    }
}


void init_s(set* ss){
    *ss = malloc(sizeof(set_));
    set s = *ss;
    map_init(&(s->h));
    map_init(&(s->hNum));
    s->next = 0; 
}

void addNum_s(set s, int num){
    char* st = itoa(num);
    addStr_s(s, st);
}

void addStr_s(set s, char* st){
    if (!findStr_s(s, st)){
        map_set(&(s->h), st, s->next);
        map_set(&(s->hNum), st, 1);
        s->next++;
    }else{
        int num = *map_get(&(s->hNum), st);
        map_remove(&(s->hNum), st);
        num++;
        map_set(&(s->hNum), st, num);
    }
}


int countInt_s(set s, int num){
    char* st = itoa(num);
    return countStr_s(s, st);
}

int countStr_s(set s, char*st){
    if (findStr_s(s, st))
        return (*map_get(&(s->hNum), st));
    else return -1;
}

int findStr_s(set s, char* st){
    return map_get(&(s->h), st) != NULL;
}

int findNum_s(set s, int num){
    char* st = itoa(num);
    return findStr_s(s, st);
}

void delStr_s(set s, char* st){
    if (findStr_s(s, st)){
        map_remove(&(s->hNum), st);
        map_remove(&(s->h), st);
    }
}

void delNum_s(set s, int num){
    char* st = itoa(num);
    delStr_s(s, st);
}



list getStr_s(set s){
    list l;
    createList(&l);
    map_iter_t iter = map_iter(&(s->h));
    char* key;
    while(key = map_next(&(s->h), &iter)){
        push_back_l(l, strItem_, key);
    }
    return l;
}