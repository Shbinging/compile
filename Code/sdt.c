#include"sdt.h"
#include "map/map.h"
#include"stdlib.h"
#include"assert.h"
#include"stdio.h"
#define ONE(x) (x->son)
#define TWO(x) (x->son->bro)
#define THREE(x) (x->son->bro->bro)
#define FOUR(x) (x->son->bro->bro->bro)
#define FIVE(x) (x->son->bro->bro->bro->bro)
#define SIX(x) (x->son->bro->bro->bro->bro->bro)
#define new(x) (malloc(sizeof(x)))
#define eName(a, b) (strcmp(a->name, b) == 0)
#define MT4(b) if (FOUR(rt) != NULL && eName(FOUR(rt), b))
#define MT3(b) if (THREE(rt) != NULL && eName(THREE(rt), b))
#define MT2(b) if (TWO(rt) != NULL && eName(TWO(rt), b))
#define MT1(b) if (ONE(rt) != NULL && eName(ONE(rt), b))
#define strCopy(a, b) a = malloc(strlen(b) + 1);\
strcpy(a, b)
#define preWORK(rt) print(rt, depth);\
 if (rt->type == makeType(YFFULL)){\
        lineNo = rt->info.lineNo;\
    }
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
} varItem_;

typedef struct structItem_{
    char* name;
    Type type;
} structItem_;

typedef struct funcItem_{
    char* name;
    FieldList para;
    Type retType;
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
map_structItem_t structTable;
map_varItem_t localVarTable, globalVarTable, domainTable;

map_funcItem_t funcTable;
int lineNo;
int isStruct = 0;
funcItem funcUse = NULL;
int isInt(Type type){
    return (type != NULL) && (type->kind == BASIC) && (type->u.basic == type_int);
}

int isFloat(Type type){
    return (type != NULL) && (type->kind == BASIC) && (type->u.basic == type_float);
}

int isArray(Type type){
    return (type != NULL) && (type->kind == ARRAY);
}

int isStructure(Type type){
    return (type != NULL) && (type->kind == STRUCTURE);
}

int isFunc(expVal tmp){
    return (tmp != NULL) && (tmp->lr == L_VAL) && (tmp->lType == l_func);
}

int isVar(expVal tmp){
    return (tmp != NULL) && (tmp->lr == L_VAL) && (tmp->lType == l_var) && (tmp->type != NULL);
}

int isRight(expVal tmp){
    return (tmp != NULL) && (tmp->lr = R_VAL) && (tmp->type != NULL);
}

int isSameType(Type a, Type b){
    if (isArray(a) && !isArray(b)) return 0;
    if (isInt(a) && !isInt(b)) return 0;
    if (isFloat(a) && !isFloat(b)) return 0;
    if (isStructure(a) && !isStructure(b)) return 0;
    //XXX:名等价
    if (isStructure(a) && (strcmp(a->structureName, b->structureName) != 0)) return 0;
    return 1;
}

expVal lookupTable(char* name){
    expVal res = new(expVal_);
    res->lType = l_var;
    res->lr = L_VAL;
    res->type = NULL;
    if (map_get(&localVarTable, name) != NULL){
        varItem var = *map_get(&localVarTable, name);
        res->lType = l_var;
        res->type = var->type;
    }else if (map_get(&globalVarTable, name) != NULL){
        varItem var = *map_get(&globalVarTable, name);
        res->lType = l_var;
        res->type = var->type;
    }else if (map_get(&funcTable, name) != NULL){
        res->lType = l_func;
        res->val.func = *map_get(&funcTable, name);
    }
    return res;
}

int isExsist(char* name, int inStruct){
    int res = 0;
    res |=  (map_get(&localVarTable, name) != NULL);
    res |=  (map_get(&globalVarTable, name) != NULL);
    res |=  (map_get(&funcTable, name) != NULL);
    res |=  (map_get(&structTable, name) != NULL);
    if (inStruct) res |= (map_get(&domainTable, name) != NULL);
    return res;
}

void error(int errorNo){
    if (errorNo < 1 || errorNo > 17){
        printf("wrong errorNo %d\n", errorNo);
        assert(0);
    }
    printf("\033[0m\033[1;32mError type %d at Line %d: test.\033[0m\n", errorNo, lineNo);
}

void sdtInit(){
    map_init(&structTable);
    map_init(&localVarTable);
    map_init(&globalVarTable);
    map_init(&funcTable);
    map_init(&domainTable);
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
FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type type);
void FunDec(TreeNode* rt, TreeNode* fa, int depth, Type type);
FieldList VarList(TreeNode* rt, TreeNode* fa, int depth);
FieldList ParamDec(TreeNode* rt, TreeNode* fa, int depth);
void CompSt(TreeNode* rt, TreeNode* fa, int depth);
void StmtList(TreeNode* rt, TreeNode* fa, int depth);
void Stmt(TreeNode* rt, TreeNode* fa, int depth);
FieldList DefList(TreeNode* rt, TreeNode* fa, int depth);
FieldList Def(TreeNode* rt, TreeNode* fa, int depth);
FieldList DecList(TreeNode* rt, TreeNode* fa, int depth, Type type);
FieldList Dec(TreeNode* rt, TreeNode* fa, int depth, Type type);
expVal Exp(TreeNode* rt, TreeNode* fa, int depth);
expValList Args(TreeNode* rt, TreeNode* fa, int depth);


int INT(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    assert(strcmp(rt->name, "INT") == 0);
    return rt->info.val_int;
}

float FLOAT(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    assert(strcmp(rt->name, "FLOAT") == 0);
    return rt->info.val_float;
}

char* ID(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    char* tmp;
    strCopy(tmp, rt->info.varName);
    return tmp;
}

Type TYPE(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    Type tmp = new(Type_);
    tmp->kind = BASIC;
    if (strcmp(rt->info.type, "int") == 0){
        tmp->u.basic = type_int;
    }
    if (strcmp(rt->info.type, "float") == 0){
        tmp->u.basic = type_float;
    }
    return tmp;
}

void Program(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    ExtDefList(ONE(rt), rt, depth + 1);
}

void ExtDefList(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    if (ONE(rt) == NULL) return;
    ExtDef(ONE(rt), rt, depth + 1);
    ExtDefList(TWO(rt), rt, depth + 1);
}

void ExtDef(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
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
    preWORK(rt)
    FieldList tmp = VarDec(ONE(rt), rt, depth + 1, type);//VarDec
    if (isExsist(tmp->name, isStruct)){
        error(3);
        return;
    }
    varItem var = new(varItem_);
    var->name = tmp->name;
    var->isInit = 0;
    var->type = tmp->type;
    map_set(&globalVarTable, var->name, var);

    MT2("COMMA"){//VarDec COMMA 
        ExtDecList(THREE(rt), rt, depth + 1, type);
    }
}

Type Specifier(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    MT1("TYPE"){
        return TYPE(ONE(rt), rt, depth + 1);
    }
    MT1("StructSpecifier"){
        isStruct = 1;
        Type tmp = StructSpecifier(ONE(rt), rt, depth + 1);
        isStruct = 0;
        return tmp;
    }
}

Type StructSpecifier(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    MT2("OptTag"){
        char* name = OptTag(TWO(rt), rt, depth + 1);
        map_deinit(&domainTable);
        map_init(&domainTable);
        if (name != NULL && (isExsist(name, isStruct))){
            error(16);
            return NULL;
        }
        FieldList structure = DefList(FOUR(rt), rt, depth + 1);
        Type tmp = new(Type_);
        tmp->kind = STRUCTURE;
        tmp->u.structure = structure;
        tmp->structureName = name;
        if (name == NULL){
            return tmp;
        }else{
            //XXX:struct名称是否能和函数名相等
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
        assert(name != NULL);
        if (map_get(&structTable, name) == NULL){
            error(17);
            return NULL;
        }else{
            structItem sItem =  *map_get(&structTable, name);
            return sItem->type;
        }
    }
}

char* OptTag(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    if (rt->son == NULL){
        return NULL;
    }else{
        return ID(ONE(rt), rt, depth + 1);
    }
}

char* Tag(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    return ID(ONE(rt), rt, depth + 1);
}

FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type type){
    preWORK(rt)
    //第一层返回FieldList, 后面返回Type
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
    preWORK(rt)
    char* name = ID(ONE(rt), rt, depth + 1);
    //check name
    assert(name != NULL);
    if (isExsist(name, isStruct)){
        error(4);
        return;
    }
    MT3("RP"){//ID LP VarList RP
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = NULL;
        func->retType = type;
        funcUse = func;
        map_set(&funcTable, name, func);
    }
    MT3("VarList"){//ID LP VarList RP
        FieldList para = VarList(THREE(rt), rt, depth + 1);
        //TODO:检查形参是否重复
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = para;
        func->retType = type;
        funcUse = func;
        map_set(&funcTable, name, func);
    }
}

FieldList VarList(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
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
    preWORK(rt)
    Type type = Specifier(ONE(rt), rt, depth + 1);
    FieldList tmp = VarDec(TWO(rt), rt, depth + 1, type);
    if (isExsist(tmp->name, isStruct)){
        error(3);
        return NULL;
    }
    varItem var = new(varItem_);
    var->name = tmp->name;
    var->isInit = 0;
    var->type = tmp->type;
    map_set(&localVarTable, var->name, var);
}

void CompSt(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    DefList(TWO(rt), rt, depth + 1);
    StmtList(THREE(rt), rt, depth + 1);
}

void StmtList(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    if(ONE(rt) == NULL) return;
    Stmt(ONE(rt), rt, depth + 1);
    StmtList(TWO(rt), rt, depth + 1);
}

void Stmt(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    MT1("Exp"){
        Exp(ONE(rt), rt, depth + 1);
    }
    MT1("CompSt"){
        CompSt(ONE(rt), rt, depth + 1);
    }
    MT1("RETURN"){
        //check return
        expVal res = Exp(TWO(rt), rt, depth + 1);
        if (!((funcUse != NULL) && (res != NULL) && isSameType(funcUse->retType, res->type))){
            error(8);
            return;
        }

    }
    MT1("IF"){
        expVal condVal = Exp(THREE(rt), rt, depth + 1);
        //XXX::check condVal
        Stmt(FIVE(rt), rt, depth + 1);
        if (SIX(rt) != NULL){// else
            Stmt(SIX(rt)->bro, rt, depth + 1);
        }
    }
    MT1("WHILE"){
        expVal condVal = Exp(THREE(rt), rt, depth + 1);
        //XXX::check condVal
        Stmt(FIVE(rt), rt, depth + 1);
    }
}

FieldList DefList(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
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
    preWORK(rt)
    Type spType = Specifier(ONE(rt), rt, depth + 1);
    return DecList(TWO(rt), rt, depth + 1, spType);
}

FieldList DecList(TreeNode* rt, TreeNode* fa, int depth, Type type){
    preWORK(rt)
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

FieldList Dec(TreeNode* rt, TreeNode* fa, int depth, Type type){
    preWORK(rt)
    FieldList var = VarDec(ONE(rt), rt, depth + 1, type);
    //根据是否是struct还是localVariable 检查变量是否重复定义
    if (isExsist(var->name, isStruct)){
        if (isStruct){
            error(15);
            return NULL;
        }else{
            error(3);
            return NULL;
        }
    }
    if (TWO(rt) == NULL){//varDec
        varItem vari = new(varItem_);
        vari->isInit = 0;
        vari->name = var->name;
        vari->type = var->type;
        if (isStruct){
            map_set(&domainTable, vari->name, vari);
        }else{        
            map_set(&localVarTable, vari->name, vari);
        }
        return var;
    }
    MT2("ASSIGNOP"){//varDec ASSIGNOP Exp
        if (isStruct){
            error(15);
            return NULL;
        }
        expVal res = Exp(THREE(rt), rt, depth + 1);
        //检查赋值是否错误
        if (!((res != NULL) && isSameType(res->type, var->type))){
            error(5);
            return NULL;
        }
        if (isArray(res->type)){
            error(7);
            return NULL;
        }

        varItem vari = new(varItem_);
        vari->isInit = 1;
        vari->name = var->name;
        vari->type = var->type;
        if (isStruct){
            map_set(&domainTable, vari->name, vari);
        }else{        
            map_set(&localVarTable, vari->name, vari);
        }
        return var;
    }
}


expVal Exp(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    MT1("LP"){//LP Exp RP
        expVal tmp =  Exp(TWO(rt), rt, depth + 1);
        tmp->lr = R_VAL;
        return tmp;
    }
    MT1("MINUS"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //检查类型
        if (res == NULL){
            error(7);
            return NULL;
        }
        if (!(isInt(res->type) || isFloat(res->type))){
            error(7);
            return NULL;
        }
        res->lr = R_VAL;
        return res;
    }
    MT1("NOT"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //检查类型
        if (res == NULL){
            error(7);
            return NULL;
        }
        if (!isInt(res->type)){
            error(7);
            return NULL;
        }
        res->lr = R_VAL;
        return res;
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
    MT1("ID"){
        char* name = ID(ONE(rt), rt, depth + 1);
        expVal res = lookupTable(name);
        if (TWO(rt) == 0){//ID
            if (!isVar(res)){
                error(1);
                return NULL;
            }
            return res;
        }
        MT3("Args"){//ID LP Args RP
            //检查函数是否存在
            if (isVar(res)){
                error(11);
                return NULL;
            }
            if (!isFunc(res)){
                error(2);
                return NULL;
            }
            expValList argsReal = Args(THREE(rt), rt, depth + 1);
            //检查函数调用实参与形参数目和类型是否匹配
            FieldList argsFormal = res->val.func->para;
            for(; argsFormal != NULL; argsFormal = argsFormal->tail){
                if (!isSameType(argsFormal->type, argsReal->val->type)){
                    error(9);
                    return NULL;
                }
                argsReal = argsReal->tail;
            }
            if (argsReal != NULL){
                error(9);
                return res;
            }
            res->type = res->val.func->retType;
            res->lr = R_VAL;
            return res;
        }
        MT2("LP"){//ID LP RP
            //检查函数调用实参与形参数目和类型是否匹配
            //查询函数返回类型
            if (isVar(res)){
                error(11);
                return NULL;
            }
            if (!isFunc(res)){
                error(2);
                return NULL;
            }
            if (res->val.func->para != NULL){
                error(9);
                return NULL;
            }
            res->type = res->val.func->retType;
            res->lr = R_VAL;
            return res;
        }
    }
    MT2("LB"){//Exp LB Exp RB
        expVal left = Exp(ONE(rt), rt, depth + 1);
        expVal right = Exp(THREE(rt), rt, depth + 1);
        //检查right是否为整数
        if (!(isRight(right) && isInt(right->type))){
            error(12);
            return NULL;
        }
        if (!isVar(left)) return NULL;
        if (!isArray(left->type)){
            error(10);
            return NULL;
        }
        left->type = left->type->u.array.elem;
        return left;
    }
    MT2("DOT"){//Exp DOT ID
        expVal left = Exp(ONE(rt), rt, depth + 1);
        char* name = ID(THREE(rt), rt, depth + 1);
        //检查left为左值
        if (!isVar(left)) return NULL;
        if (!isStructure(left->type)){
            error(13);
            return NULL;
        }
        assert(name != NULL);
        FieldList p = left->type->u.structure;
        for(p ; p != NULL; p = p->tail){
            if (strcmp(name, p->name) == 0){
                break;
            }
        }
        if (p == NULL){
            error(14);//未找到域名
            return NULL;
        }
        left->type = p->type;
        return left;
    }
    MT2("ASSIGNOP"){
        expVal left = Exp(ONE(rt), rt, depth + 1);
        expVal right = Exp(THREE(rt), rt, depth + 1);
        if (right == NULL){ error(-1); return NULL;}
        if (!isVar(left)){
            error(6);
            return NULL;
        }
        if (!isSameType(left->type, right->type)){
            error(5);
            return NULL;
        }
        if (isArray(left->type)){
            error(7);
            return NULL;
        }
        left->lr = R_VAL;
        return left;
    }
    char* op2Name[8] = {"AND", "OR", "RELOP", "PLUS", "MINUS", "STAR", "DIV"};
    for(int i = 0; i < 8; i++){//AND OR RELOP PLUS MINUS STAR DIV
        if (TWO(rt) != NULL && strcmp(TWO(rt)->name, op2Name[i]) == 0){
            expVal left = Exp(ONE(rt), rt, depth + 1);
            expVal right = Exp(THREE(rt), rt, depth + 1);
            if (left == NULL || right == NULL){
                error(7);
                return NULL;
            }
            if (!isSameType(left->type, right->type)){
                error(7);
                return NULL;
            }
            if (!(isInt(left->type) || isFloat(left->type))){
                error(7);
                return NULL;
            }
            left->lr = R_VAL;
            return left;
        }
    }
}

expValList Args(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
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