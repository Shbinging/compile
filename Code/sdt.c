#include"sdt.h"
#include "map/map.h"
#define ONE(x) (x->son)
#define TWO(x) (x->son->bro)
#define THREE(x) (x->son->bro->bro)
#define FOUR(x) (x->son->bro->bro->bro)
#define new(x) (malloc(sizeof(x)))
#define eName(a, b) (strcmp(a->name, b) == 0)
#define MT4(b) if (eName(FOUR(rt), b))
#define MT3(b) if (eName(THREE(rt), b))
#define MT2(b) if (eName(TWO(rt), b))
#define MT1(b) if (eName(ONE(rt), b))
#define strCopy(a, b) a = malloc(strlen(b) + 1);\
strcpy(a, b)
typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct varItem_* varItem;
typedef struct structItem_* structItem;
typedef struct expVal_* expVal;

typedef struct Type_
{
    enum { BASIC, ARRAY, STRUCTURE } kind;
    union
    {
    // 基本类型
    enum {type_int, type_float} basic;
     // 数组类型信息包括元素类型与数组大小构成
    struct { Type elem; int size; } array;
    // 结构体类型信息是一个链表
    FieldList structure;
    } u;
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
} varItem_;

typedef struct expVal_
{
    Type type;
    union 
    {
        int val_int;
        float val_float;
    }val;
    
} expVal_;


typedef struct structItem_{
    char* name;
    Type type;
} structItem_;

typedef map_t(structItem) map_structItem_t;
typedef map_t(varItem) map_varItem_t;
map_structItem_t structTable;
map_varItem_t localVarTable, globalVarTable;

void error(int errorNo){

}
void sdtInit(){
    map_init(&structTable);
    map_init(&localVarTable);
    map_init(&globalVarTable);
}

Type TYPE(TreeNode* rt, TreeNode* fa, int depth){
    Type tmp = new(Type_);
    tmp->kind = BASIC;
    if (strcmp(rt->info.type, "INT")){
        tmp->u.basic = type_int;
    }
    if (strcmp(rt->info.type, "FLOAT")){
        tmp->u.basic = type_float;
    }
}
char* ID(TreeNode* rt, TreeNode* fa, int depth){
    char* tmp;
    strCopy(tmp, rt->info.varName);
    return tmp;
}

char* OptTag(TreeNode* rt, TreeNode* fa, int depth){
    if (rt->son == NULL){
        return NULL;
    }else{
        return ID(ONE(rt), rt, depth + 1);
    }
}

char* Tag(TreeNode* rt, TreeNode* fa, int depth){
    return ID(ONE(rt), rt, depth + 1);
}
FieldList DefList(TreeNode* rt, TreeNode* fa, int depth);
Type StructSpecifier(TreeNode* rt, TreeNode* fa, int depth){
    Type tmp = new(Type_);
    tmp->kind = STRUCTURE;
    tmp->u.structure = NULL;
    MT2("OptTag"){
        char* name = OptTag(TWO(rt), rt, depth + 1);
        FieldList structure = DefList(FOUR(rt), rt, depth + 1);
        tmp->kind = STRUCTURE;
        tmp->u.structure = structure;
        if (name == NULL){
            return tmp;
        }else{
            //TODO::检查域初始化（不能初始化）
            // 登记struct
            structItem tmps = new(structItem_);
            tmps->name = name;
            tmps->type = tmp;
            map_set(&structTable, tmps->name, tmps);
            return tmp;
        }
    }
    MT2("Tag"){
        char* name = Tag(TWO(rt), rt, depth + 1);
        if (map_get(&structTable, name) == NULL){
            error(17);
            return tmp;
        }else{
            return *map_get(&structTable, name);
        }
    }
}

Type Specifier(TreeNode* rt, TreeNode* fa, int depth){
    MT1("TYPE"){
        return TYPE(ONE(rt), rt, depth + 1);
    }
    MT1("StructSpecifier"){
        return StructSpecifier(ONE(rt), rt, depth + 1);
    }
}

expVal Exp(TreeNode* rt, TreeNode* fa, int depth){
    //TODO::complete exp
    expVal tmp = new(expVal_);
    tmp->type = new(Type_);
    tmp->type->kind = BASIC;
    tmp->type->u.basic = type_int;
    tmp->val.val_int = 0;
    return tmp;
}

FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type* type){
    //TODO::第一层返回varDec, 后面返回Type
}

FieldList Dec(TreeNode* rt, TreeNode* fa, int depth, Type* type){
    FieldList var = VarDec(ONE(rt), rt, depth + 1, type);
    //TODO: 根据是否是struct还是localVariable 检查变量是否重复定义
    if (TWO(rt) == NULL){//varDec
        varItem vari = new(varItem_);
        vari->isInit = 0;
        vari->name = var->name;
        vari->type = var->type;
        map_set(&localVarTable, vari->name, vari);
        return var;
    }
    MT2("ASSIGNOP"){//varDec ASSIGNOP Exp
        expVal res = Exp(THREE(rt), rt, depth + 1);
        //TODO:: 检查赋值是否错误
        varItem vari = new(varItem_);
        vari->isInit = 1;
        vari->name = var->name;
        vari->type = var->type;
        map_set(&localVarTable, vari->name, vari);
        return var;
    }
}

FieldList DecList(TreeNode* rt, TreeNode* fa, int depth, Type* type){
    if (TWO(rt) == NULL){//Dec
        return Dec(ONE(rt), rt, depth + 1, type);
    }
    MT2("COMMA"){//Dec COMMA DecList
        FieldList lst1 = Dec(ONE(rt), rt, depth + 1, type);
        FieldList lst2 = DecList(THREE(rt), rt, depth + 1, type);
        if (lst1 == NULL) return lst2;
        FieldList p;
        for(p = lst1; p->tail != NULL; p = p->tail);
        p->tail = lst2;
        return lst1;
    }
}

FieldList Def(TreeNode* rt, TreeNode* fa, int depth){
    Type spType = Specifier(ONE(rt), rt, depth + 1);
    return DecList(TWO(rt), rt, depth + 1, spType);
}

FieldList DefList(TreeNode* rt, TreeNode* fa, int depth){
    if (rt->son == NULL){
        return NULL;
    }
    MT1("Def"){
        FieldList lst1 = Def(ONE(rt), rt, depth + 1);
        FieldList lst2 = DefList(TWO(rt), rt, depth + 1);
        if (lst1 == NULL) return lst2;
        FieldList p;
        for(p = lst1; p->tail != NULL; p = p->tail);
        p->tail = lst2;
        return lst1;
    }
}

void Normal(TreeNode* rt, TreeNode* fa, int depth){

}
void sdtTree(TreeNode* rt, int depth){

}