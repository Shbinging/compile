#ifndef __SDT__
#define __SDT__
#include "../utils/syntaxTree/treeNode.h"
#include "../utils/map/map.h"
#define ONE(x) (x->son)
#define TWO(x) (x->son->bro)
#define THREE(x) (x->son->bro->bro)
#define FOUR(x) (x->son->bro->bro->bro)
#define FIVE(x) (x->son->bro->bro->bro->bro)
#define SIX(x) (x->son->bro->bro->bro->bro->bro)
void sdtTree(TreeNode* rt, int depth);
typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct varItem_* varItem;
typedef struct structItem_* structItem;
typedef struct expVal_* expVal;
typedef struct expValList_* expValList;
typedef struct funcItem_* funcItem;
typedef struct Type_
{
    enum { BASIC, ARRAY, STRUCTURE} kind;
    union
    {
    // 基本类型
    enum {type_int, type_float} basic;
     // 数组类型信息包括元素类型与数组大小构成
    struct { Type elem; int size; } array;
    // 结构体类型信息是一个链表
    FieldList structure;
    } u;
    char* structureName;
} Type_;

typedef struct FieldList_
{
    char* name; // 域的名字
    Type type; // 域的类型
    FieldList tail; // 下一个域
} FieldList_;

typedef struct varItem_
{
    char* name;
    Type type;
    int isInit;
    size_t totalSize;
    size_t baseSize;
} varItem_;

typedef struct structItem_{
    char* name;
    Type type;
} structItem_;

typedef struct funcItem_{
    char* name;
    FieldList para;
    Type retType;
    int isDef;
    int lineSum;
    int lineNo[256];
} funcItem_;

typedef struct expVal_
{
    Type type;
    union 
    {
        int val_int;
        float val_float;
        funcItem func;
        int varSrc;//XXX:变量的地址
    }val;
    enum {l_func, l_var} lType;
    enum {L_VAL, R_VAL} lr;
} expVal_;
typedef struct expValList_{
    expVal val;
    expValList tail;
} expValList_;
typedef map_t(structItem) map_structItem_t;
typedef map_t(varItem) map_varItem_t;
typedef map_t(funcItem) map_funcItem_t;
extern map_varItem_t localVarTable;
extern map_funcItem_t funcTable;

char* ID0(TreeNode* rt, TreeNode* fa, int depth);
#endif