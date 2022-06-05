#ifndef __set__

#define __set__
#include "../utils/map/map.h"
#include "../utils/list/list.h"

char* itoa(int num);


typedef struct set_
{
    map_int_t h;
    map_int_t hNum;
    int next;
    int num;
}set_;

typedef set_* set;
typedef listNode(char* , int, strItem_) strItem_;
typedef strItem_* strItem;

void init_s(set* ss);
void addNum_s(set s, int num);
void addStr_s(set s, char* st);
int findStr_s(set s, char* st);
int findNum_s(set s, int num);
void delStr_s(set s, char* st);
void delNum_s(set s, int num);
list getStr_s(set s);
int countInt_s(set s, int num);
int countStr_s(set s, char*st);
int indexStr_s(set s, char* st);
int indexInt_s(set s, int num);
int getNum_s(set s);
void setCountStr_s(set s, char*st, int num);
void setCountInt_s(set s, int num1, int num);
void print_set(set s);
#endif