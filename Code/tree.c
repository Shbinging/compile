#include "treeNode.h"
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>


TreeNode* make_tree(enum nodeType type, char* name, int lineNo, int num, ...){
    va_list valist;
    va_start(valist, num);
    TreeNode* rt = malloc(sizeof(TreeNode));
    rt->son = NULL;
    rt->bro = NULL;
    rt->type = type;
    rt->name = name;
    rt->info.lineNo = lineNo;
    TreeNode* p, *q = NULL;
    for(int i = 1; i <= num; i++){
        p = va_arg(valist, TreeNode*);
        if (q) q->bro = p;
        else rt->son = p;
        q = p;
    }
    return rt;
}


void print(TreeNode* rt, int depth){
    if (rt->type == makeType(YFNULL)) return;
    for(int i = 1; i <= depth; i++) printf("  ");
    int type = rt->type;
    switch(rt->type){
        case makeType(YFFULL):
            printf("%s (%d)", rt->name, rt->info.lineNo);
            break;
        case  makeType(ID):
            printf("%s: %s", rt->name, rt->info.varName);
            break;
        case makeType(TYPE):
            printf("%s: %s", rt->name, rt->info.type);
            break;
        case makeType(INT):
            printf("%s: %d", rt->name, rt->info.val_int);
            break;
        case makeType(FLOAT):
            printf("%s: %.6f", rt->name, rt->info.val_float);
            break;
        case makeType(KEY):
            printf("%s", rt->name);
    }
    printf("\n");
}
void printTree(TreeNode* rt, int depth){
    print(rt, depth);
    if (rt->son) printTree(rt->son, depth + 1);
    if (rt->bro) printTree(rt->bro, depth);
}