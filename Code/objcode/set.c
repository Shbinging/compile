#include "set.h"


int atoi(char* strNum){
    int s = 0;
    for(int i = 0; i < strlen(strNum);i++){
        s = s * 10 + strNum[i] - '0';
    }
    return s;
}

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
    s->num = 0;
}

void free_s(set ss){
    map_deinit(&(ss->hNum));
    map_deinit(&(ss->h));
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
        s->num++;
    }else{
        int num = *map_get(&(s->hNum), st);
        map_remove(&(s->hNum), st);
        num++;
        map_set(&(s->hNum), st, num);
    }
}

int indexStr_s(set s, char* st){
    if (findStr_s(s, st)) return *map_get(&(s->h), st);
    else return -1;
}

void setCountStr_s(set s, char*st, int num){
    map_remove(&(s->hNum), st);
    map_set(&(s->hNum), st, num);
}

void setCountInt_s(set s, int num1, int num){
    char* st = itoa(num1);
    setCountStr_s(s, st, num);
}

int indexInt_s(set s, int num){
    return indexStr_s(s, itoa(num));
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
        s->num--;
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

int getNum_s(set s){
    return s->num;
}

void print_set(set s){
    list nameList = getStr_s(s);
    printf("start set\n");
    for(strItem i = nameList->head; i; i = i->next){
        printf("%d %s\n", indexStr_s(s, i->val), i->val);
    }
    printf("end set\n");
}