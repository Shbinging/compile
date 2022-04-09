#include"sdt.h"
#include "map/map.h"
#include"stdlib.h"
#include"assert.h"
#define ONE(x) (x->son)
#define TWO(x) (x->son->bro)
#define THREE(x) (x->son->bro->bro)
#define FOUR(x) (x->son->bro->bro->bro)
#define FIVE(x) (x->son->bro->bro->bro->bro)
#define SIX(x) (x->son->bro->bro->bro->bro->bro)
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
typedef struct expValList_* expValList;
typedef struct funcItem_* funcItem;
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
} varItem_;

typedef struct expVal_
{
    Type type;
    union 
    {
        int val_int;
        float val_float;
    }val;
    enum {L_VAL, R_VAL} lr;
} expVal_;

typedef struct expValList_{
    expVal val;
    expValList tail;
} expValList_;

typedef struct structItem_{
    char* name;
    Type type;
} structItem_;

typedef struct funcItem_{
    char* name;
    FieldList para;
    Type retType;
} funcItem_;

typedef map_t(structItem) map_structItem_t;
typedef map_t(varItem) map_varItem_t;
typedef map_t(funcItem) map_funcItem_t;
map_structItem_t structTable;
map_varItem_t localVarTable, globalVarTable;
map_funcItem_t funcTable;
void error(int errorNo){

}
void sdtInit(){
    map_init(&structTable);
    map_init(&localVarTable);
    map_init(&globalVarTable);
    map_init(&funcTable);
}


int INT(TreeNode* rt, TreeNode* fa, int depth);
float FLOAT(TreeNode* rt, TreeNode* fa, int depth);
char* ID(TreeNode* rt, TreeNode* fa, int depth);
Type TYPE(TreeNode* rt, TreeNode* fa, int depth);
void Program(TreeNode* rt, TreeNode* fa, int depth);
void ExtDefList(TreeNode* rt, TreeNode* fa, int depth);
void ExtDef(TreeNode* rt, TreeNode* fa, int depth);
void ExtDecList(TreeNode* rt, TreeNode* fa, int depth, Type type);
Type Specifier(TreeNode* rt, TreeNode* fa, int depth);
Type StructSpecifier(TreeNode* rt, TreeNode* fa, int depth);
char* OptTag(TreeNode* rt, TreeNode* fa, int depth);
char* Tag(TreeNode* rt, TreeNode* fa, int depth);
FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type* type);
void FunDec(TreeNode* rt, TreeNode* fa, int depth, Type type);
FieldList VarList(TreeNode* rt, TreeNode* fa, int depth);
FieldList ParamDec(TreeNode* rt, TreeNode* fa, int depth);
void CompSt(TreeNode* rt, TreeNode* fa, int depth);
void StmtList(TreeNode* rt, TreeNode* fa, int depth);
void Stmt(TreeNode* rt, TreeNode* fa, int depth);
FieldList DefList(TreeNode* rt, TreeNode* fa, int depth);
FieldList Def(TreeNode* rt, TreeNode* fa, int depth);
FieldList DecList(TreeNode* rt, TreeNode* fa, int depth, Type* type);
FieldList Dec(TreeNode* rt, TreeNode* fa, int depth, Type* type);
expVal Exp(TreeNode* rt, TreeNode* fa, int depth);
expValList Args(TreeNode* rt, TreeNode* fa, int depth);


int INT(TreeNode* rt, TreeNode* fa, int depth){
    assert(strcmp(rt->name, "INT") == 0);
    return rt->info.val_int;
}

float FLOAT(TreeNode* rt, TreeNode* fa, int depth){
    assert(strcmp(rt->name, "FLOAT") == 0);
    return rt->info.val_float;
}

char* ID(TreeNode* rt, TreeNode* fa, int depth){
    char* tmp;
    strCopy(tmp, rt->info.varName);
    return tmp;
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

void Program(TreeNode* rt, TreeNode* fa, int depth){
    ExtDefList(ONE(rt), rt, depth + 1);
}

void ExtDefList(TreeNode* rt, TreeNode* fa, int depth){
    if (ONE(rt) == NULL) return;
    ExtDef(ONE(rt), rt, depth + 1);
    ExtDef(TWO(rt), rt, depth + 1);
}

void ExtDef(TreeNode* rt, TreeNode* fa, int depth){
    MT2("ExtDecList"){//Specifier ExtDecList SEMI
        Type type = Specifier(ONE(rt), rt, depth + 1);
        ExtDecList(TWO(rt), rt, depth + 1, type);
    }
    MT2("SEMI"){
        Specifier(ONE(rt), rt, depth + 1);
    }
    MT2("FunDec"){
        Type type = Specifier(ONE(rt), rt, depth + 1);
        FunDec(TWO(rt), rt, depth + 1, type);
        CompSt(THREE(rt), rt, depth + 1);
    }
}

void ExtDecList(TreeNode* rt, TreeNode* fa, int depth, Type type){
    if (TWO(rt) == NULL){//VarDec
        VarDec(ONE(rt), rt, depth + 1, type);
    }
    MT2("COMMA"){
        VarDec(ONE(rt), rt, depth + 1, type);
        ExtDecList(THREE(rt), rt, depth + 1, type);
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
            tmp->structureName = name;
            return tmp;
        }
    }
    MT2("Tag"){
        char* name = Tag(TWO(rt), rt, depth + 1);
        if (map_get(&structTable, name) == NULL){
            error(17);
            return tmp;
        }else{
            structItem sItem =  *map_get(&structTable, name);
            tmp->structureName = sItem->name;
            tmp->u.structure = sItem->type;
            return tmp;
        }
    }
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

FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type* type){
    //TODO::第一层返回varDec, 后面返回Type
    if (TWO(rt) == NULL){//ID
        FieldList tmp = new(FieldList_);
        tmp->name = ID(ONE(rt), rt, depth + 1);
        tmp->tail = NULL;
        tmp->type = type;
        return tmp;
    }
    MT2("LB"){
        int idx = INT(THREE(rt), rt, depth + 1);
        Type tmp = new (Type_);
        tmp->kind = ARRAY;
        tmp->u.array.size = idx;
        tmp->u.array.elem = type;
        return VarDec(ONE(rt), rt, depth + 1, tmp);
    }
}

void FunDec(TreeNode* rt, TreeNode* fa, int depth, Type type){
    char* name = ID(ONE(rt), rt, depth + 1);
    //TODO::check name
    MT3("RP"){//ID LP VarList RP
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = NULL;
        func->retType = type;
        map_set(&funcTable, name, func);
    }
    MT3("VarList"){//ID LP VarList RP
        FieldList para = VarList(THREE(rt), rt, depth + 1);
        //TODO::check name
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = para;
        func->retType = type;
        map_set(&funcTable, name, func);
    }
}

FieldList VarList(TreeNode* rt, TreeNode* fa, int depth){
    if (TWO(rt) == NULL){//ParamDec
        return ParamDec(ONE(rt), rt, depth + 1);
    }
    MT2("COMMA"){//ParamDec COMMA VarList
        FieldList lst1 = ParamDec(ONE(rt), rt, depth + 1);
        FieldList lst2 = VarList(THREE(rt), rt, depth + 1);
        if (lst1 == NULL) return lst2;
        FieldList p;
        for(p = lst1; p->tail != NULL; p = p->tail);
        p->tail = lst2;
        return lst1;
    }
}

FieldList ParamDec(TreeNode* rt, TreeNode* fa, int depth){
    Type type = Specifier(ONE(rt), rt, depth + 1);
    return VarDec(TWO(rt), rt, depth + 1, type);
}

void CompSt(TreeNode* rt, TreeNode* fa, int depth){
    DefList(TWO(rt), rt, depth + 1);
    StmtList(THREE(rt), rt, depth + 1);
}

void StmtList(TreeNode* rt, TreeNode* fa, int depth){
    if(ONE(rt) == NULL) return;
    Stmt(ONE(rt), rt, depth + 1);
    StmtList(TWO(rt), rt, depth + 1);
}

void Stmt(TreeNode* rt, TreeNode* fa, int depth){
    MT1("Exp"){
        Exp(ONE(rt), rt, depth + 1);
    }
    MT1("CompSt"){
        CompSt(ONE(rt), rt, depth + 1);
    }
    MT1("RETURN"){
        Exp(TWO(rt), rt, depth + 1);
        //TODO:: check return
    }
    MT1("IF"){
        expVal condVal = Exp(THREE(rt), rt, depth + 1);
        //TODO::check condVal
        Stmt(FIVE(rt), rt, depth + 1);
        if (SIX(rt) != NULL){// else
            Stmt(SIX(rt)->bro, rt, depth + 1);
        }
    }
    MT1("WHILE"){
        expVal condVal = Exp(THREE(rt), rt, depth + 1);
        //TODO::check condVal
        Stmt(FIVE(rt), rt, depth + 1);
    }
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

FieldList Def(TreeNode* rt, TreeNode* fa, int depth){
    Type spType = Specifier(ONE(rt), rt, depth + 1);
    return DecList(TWO(rt), rt, depth + 1, spType);
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

expVal Exp(TreeNode* rt, TreeNode* fa, int depth){
    //TODO::complete exp
    char* op2Name[8] = {"ASSIGNOP", "AND", "OR", "RELOP", "PLUS", "MINUS", "STAR", "DIV"};
    for(int i = 0; i < 8; i++){//ASSIGNOP AND OR RELOP PLUS MINUS STAR DIV
        if (strcpy(TWO(rt)->name, op2Name[i]) == 0){
            expVal left = Exp(ONE(rt), rt, depth + 1);
            expVal right = Exp(THREE(rt), rt, depth + 1);
            //TODO::检查类型
            left->val.val_float = right->val.val_float;
            left->val.val_int = right->val.val_int;

            expVal res = new(expVal_);
            res->type = left->type;
            res->val = left->val;
            res->lr = R_VAL;
            return res;
        }
    }
    MT1("LP"){//LP Exp RP
        return Exp(TWO(rt), rt, depth + 1);
    }
    MT1("MINUS"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //TODO::检查类型
        return res;
    }
    MT1("NOT"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //TODO::检查类型
        return res;
    }
    MT1("ID"){
        char* name = ID(ONE(rt), rt, depth + 1);
        if (TWO(rt) == NULL){//ID
            
            //TODO::检查变量是否存在，并在table中寻找该变量
            expVal res = new(expVal_);
            res->lr = L_VAL;
            //TODO:找table，找到该变量的type， 注意要拷贝复制
            //res->type = 
            return res;
        }
        MT3("Args"){//ID LP Args RP
            //TODO:检查函数是否存在
            expValList args = Args(THREE(rt), rt, depth + 1);
            //TODO::检查函数调用实参与形参数目和类型是否匹配
            expVal res = new(expVal_);
            res->lr = R_VAL;
            //TODO::查询函数返回类型
            //res->type = 
            //res->val = 
            return res;
        }
        MT2("LP"){
            expVal res = new(expVal_);
            res->lr = R_VAL;
            //TODO::检查函数调用实参与形参数目和类型是否匹配
            //TODO::查询函数返回类型
            return res;
        }
    }
    MT2("LB"){//Exp LB Exp RB
        expVal left = Exp(ONE(rt), rt, depth + 1);
        expVal right = Exp(THREE(rt), rt, depth + 1);
        //TODO::检查right是否为整数
        //TODO::检查left为左值
        if(left->type->kind != ARRAY){
            //TODO::数组维数不对
            error(-1);
            return left;
        }
        left->type = left->type->u.array.elem;
        return left;
    }
    MT2("DOT"){
        expVal left = Exp(ONE(rt), rt, depth + 1);
        char* name = ID(THREE(rt), rt, depth + 1);
        //TODO::检查left为左值
        if (left->type->kind != STRUCTURE){
            error(-1);
            FieldList p = left->type->u.structure;
            for(p ; p != NULL; p = p->tail){
                if (strcmp(name, p->name)){
                    break;
                }
            }
            if (p == NULL){
                error(-1);//未找到域名
                return left;
            }
            left->type = p->type;
            return left;
        }
    }
    MT1("INT"){
        expVal tmp = new(expVal_);
        tmp->type = new(Type_);
        tmp->type->kind = BASIC;
        tmp->type->u.basic = type_int;
        tmp->lr = R_VAL;
        tmp->val.val_int = INT(ONE(rt), rt, depth + 1);
        return tmp;
    }
    MT1("FLOAT"){
        expVal tmp = new(expVal_);
        tmp->type = new(Type_);
        tmp->type->kind = BASIC;
        tmp->type->u.basic = type_float;
        tmp->lr = R_VAL;
        tmp->val.val_int = FLOAT(ONE(rt), rt, depth + 1);
        return tmp;
    }
    expVal tmp = new(expVal_);
    tmp->type = new(Type_);
    tmp->type->kind = BASIC;
    tmp->type->u.basic = type_int;
    tmp->val.val_int = 0;
    return tmp;
}

expValList Args(TreeNode* rt, TreeNode* fa, int depth){
    if (TWO(rt) == NULL){
        expValList tmp = new(expValList_);
        tmp->val = Exp(ONE(rt), rt, depth + 1);
        tmp->tail = NULL;
        return tmp;
    }
    MT3("Args"){
        expValList tmp = new(expValList_);
        tmp->val = Exp(ONE(rt), rt, depth + 1);
        tmp->tail = Args(THREE(rt), rt, depth + 1);
        return tmp;
    }
}

void sdtTree(TreeNode* rt, int depth){
    Program(rt, NULL, 0);
}