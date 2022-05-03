#include"sdt.h"
#include "../utils/map/map.h"
#include"stdlib.h"
#include"assert.h"
#include"stdio.h"

#define new(x) (malloc(sizeof(x)))
#define eName(a, b) (strcmp(a->name, b) == 0)
#define MT4(b) if (FOUR(rt) != NULL && eName(FOUR(rt), b))
#define MT3(b) if (THREE(rt) != NULL && eName(THREE(rt), b))
#define MT2(b) if (TWO(rt) != NULL && eName(TWO(rt), b))
#define MT1(b) if (ONE(rt) != NULL && eName(ONE(rt), b))
#define strCopy(a, b) a = malloc(strlen(b) + 1);\
strcpy(a, b)
//#define preWORK(rt) print(rt, depth);
#define preWORK(rt) if (rt->type == makeType(YFFULL)){\
        lineNo = rt->info.lineNo;\
    }
typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct varItem_* varItem;
typedef struct structItem_* structItem;
typedef struct expVal_* expVal;
typedef struct expValList_* expValList;
typedef struct funcItem_* funcItem;











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

char* errorName[]= {
    "",
    "Undefined variable",
    "Undefined function",
    "Redefined variable",
    "Redefined function",
    "Type mismatched for assignment",
    "The left-hand side of an assignment must be a variable",
    "Type mismatched for operands",
    "Type mismatched for return",
    "Function is not applicable for arguments",
    "is not an array",
    "is not a function",
    "is not an integer",
    "Illegal use of '.'",
    "Non-existent field",
    "Redefined field",
    "Duplicated name",
    "Undefined structure",
    "Undefined function",
    "Inconsistent declaration of function"
};
void error(int errorNo, int lineNo){
    if (errorNo < -2 || errorNo > 19){
        printf("wrong errorNo %d", errorNo);
        assert(0);
    }
    if (errorNo > 0){
        printf("Error type %d at Line %d: %s.\n", errorNo, lineNo, errorName[errorNo]);
    }
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
char* ID0(TreeNode* rt, TreeNode* fa, int depth);
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
void FunDec(TreeNode* rt, TreeNode* fa, int depth, Type type, int isDef);
FieldList VarList(TreeNode* rt, TreeNode* fa, int depth, int isDef);
FieldList ParamDec(TreeNode* rt, TreeNode* fa, int depth, int isDef);
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

char* ID0(TreeNode* rt, TreeNode* fa, int depth){
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
        MT3("SEMI"){
            FunDec(TWO(rt), rt, depth + 1, type, 0);
        }else{
            FunDec(TWO(rt), rt, depth + 1, type, 1);
            CompSt(THREE(rt), rt, depth + 1);
        }
    }
}

void ExtDecList(TreeNode* rt, TreeNode* fa, int depth, Type type){
    preWORK(rt)
    FieldList tmp = VarDec(ONE(rt), rt, depth + 1, type);//VarDec
    if (isExsist(tmp->name, isStruct)){
        error(3, rt->info.lineNo);
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
            error(16, rt->info.lineNo);
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
            error(17, rt->info.lineNo);
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
        return ID0(ONE(rt), rt, depth + 1);
    }
}

char* Tag(TreeNode* rt, TreeNode* fa, int depth){
    preWORK(rt)
    return ID0(ONE(rt), rt, depth + 1);
}

FieldList VarDec(TreeNode* rt, TreeNode* fa, int depth, Type type){
    preWORK(rt)
    //第一层返回FieldList, 后面返回Type
    if (TWO(rt) == NULL){//ID0
        FieldList tmp = new(FieldList_);
        tmp->name = ID0(ONE(rt), rt, depth + 1);
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

void FunDec(TreeNode* rt, TreeNode* fa, int depth, Type type, int isDef){
    preWORK(rt)
    char* name = ID0(ONE(rt), rt, depth + 1);
    //check name
    assert(name != NULL);

    if (isExsist(name, isStruct) && map_get(&funcTable, name) == NULL){
        error(4, rt->info.lineNo);
        return;
    }
    if (map_get(&funcTable, name) != NULL){
        funcItem func = *map_get(&funcTable, name);
        if (isDef && func->isDef){
            error(4, rt->info.lineNo);
            return;
        }
        MT3("RP"){
            if (isDef) funcUse = func;
            if (!isSameType(type, func->retType)){
                error(19, rt->info.lineNo);
                return;
            }
            func->isDef |= isDef;
            if (!isDef) func->lineNo[func->lineSum++] = rt->info.lineNo;
            return;
        }
        MT3("VarList"){
            if (isDef) funcUse = func;
            FieldList para = VarList(THREE(rt), rt, depth + 1, isDef);
        //检查形参是否重复
            FieldList p = para;
            FieldList q = func->para;
            for(;p != NULL; p = p->tail){
                if (q == NULL) break;
                if (!isSameType(p->type, q->type)){
                    error(19, rt->info.lineNo);
                    return;
                }
                q = q->tail;
            }
            if (p != NULL || q != NULL){
                error(19, rt->info.lineNo);
                return;
            }
            if (!isSameType(type, func->retType)){
                error(19, rt->info.lineNo);
                return;
            }
            if (!isDef) func->lineNo[func->lineSum++] = rt->info.lineNo;
            func->isDef |= isDef;
            return;
        }
    }

    MT3("RP"){//ID0 LP VarList RP
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = NULL;
        func->retType = type;
        if (isDef) funcUse = func;
        func->isDef = isDef;
        if (!isDef){
            func->lineSum = 0;
            func->lineNo[func->lineSum++] = rt->info.lineNo;
        }
        map_set(&funcTable, name, func);
    }
    MT3("VarList"){//ID0 LP VarList RP
        FieldList para = VarList(THREE(rt), rt, depth + 1, isDef);
        //检查形参是否重复
        FieldList p = para;
        funcItem func = new(funcItem_);
        func->name = name;
        func->para = para;
        func->retType = type;
        if (isDef) funcUse = func;
        func->isDef = isDef;
        if (!isDef){
            func->lineSum = 0;
            func->lineNo[func->lineSum++] = rt->info.lineNo;
        }
        map_set(&funcTable, name, func);
    }
}

FieldList VarList(TreeNode* rt, TreeNode* fa, int depth, int isDef){
    preWORK(rt)
    if (TWO(rt) == NULL){//ParamDec
        return ParamDec(ONE(rt), rt, depth + 1, isDef);
    }
    MT2("COMMA"){//ParamDec COMMA VarList
        FieldList lst1 = ParamDec(ONE(rt), rt, depth + 1, isDef);
        FieldList lst2 = VarList(THREE(rt), rt, depth + 1, isDef);
        if (lst1 == NULL) return lst2;
        FieldList p;
        for(p = lst1; p->tail != NULL; p = p->tail);
        p->tail = lst2;
        return lst1;
    }
}

FieldList ParamDec(TreeNode* rt, TreeNode* fa, int depth, int isDef){
    preWORK(rt)
    Type type = Specifier(ONE(rt), rt, depth + 1);
    FieldList tmp = VarDec(TWO(rt), rt, depth + 1, type);
    if (!isDef) return tmp;
    if (isExsist(tmp->name, isStruct)){
        error(3, rt->info.lineNo);
        return NULL;
    }
    varItem var = new(varItem_);
    var->name = tmp->name;
    var->isInit = 0;
    var->type = tmp->type;
    map_set(&localVarTable, var->name, var);
    return tmp;
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
            error(8, rt->info.lineNo);
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
            error(15, rt->info.lineNo);
            return NULL;
        }else{
            error(3, rt->info.lineNo);
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
            error(15, rt->info.lineNo);
        }
        expVal res = Exp(THREE(rt), rt, depth + 1);
        //检查赋值是否错误
        if (!((res != NULL) && isSameType(res->type, var->type))){
            error(5, rt->info.lineNo);
            return NULL;
        }
        if (isArray(res->type)){
            error(7, rt->info.lineNo);
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
        if (tmp == NULL) return NULL;
        tmp->lr = R_VAL;
        return tmp;
    }
    MT1("MINUS"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //检查类型
        if (res == NULL){
            error(7, rt->info.lineNo);
            return NULL;
        }
        if (!(isInt(res->type) || isFloat(res->type))){
            error(7, rt->info.lineNo);
            return NULL;
        }
        res->lr = R_VAL;
        return res;
    }
    MT1("NOT"){
        expVal res = Exp(TWO(rt), rt, depth + 1);
        //检查类型
        if (res == NULL){
            error(7, rt->info.lineNo);
            return NULL;
        }
        if (!isInt(res->type)){
            error(7, rt->info.lineNo);
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
        char* name = ID0(ONE(rt), rt, depth + 1);
        expVal res = lookupTable(name);
        if (TWO(rt) == 0){//ID0
            if (!isVar(res)){
                error(1, rt->info.lineNo);
                return NULL;
            }
            return res;
        }
        MT3("Args"){//ID0 LP Args RP
            //检查函数是否存在
            if (isVar(res)){
                error(11, rt->info.lineNo);
                return NULL;
            }
            if (!isFunc(res)){
                error(2, rt->info.lineNo);
                return NULL;
            }
            expValList argsReal = Args(THREE(rt), rt, depth + 1);
            //检查函数调用实参与形参数目和类型是否匹配
            FieldList argsFormal = res->val.func->para;
            for(; argsFormal != NULL; argsFormal = argsFormal->tail){
                if (argsReal == NULL || argsReal->val == NULL) break;
                if (!isSameType(argsFormal->type, argsReal->val->type)){
                    error(9, rt->info.lineNo);
                    return NULL;
                }
                argsReal = argsReal->tail;
            }
            if (argsReal != NULL || argsFormal != NULL){
                error(9, rt->info.lineNo);
                return res;
            }
            res->type = res->val.func->retType;
            res->lr = R_VAL;
            return res;
        }
        MT2("LP"){//ID0 LP RP
            //检查函数调用实参与形参数目和类型是否匹配
            //查询函数返回类型
            if (isVar(res)){
                error(11, rt->info.lineNo);
                return NULL;
            }
            if (!isFunc(res)){
                error(2, rt->info.lineNo);
                return NULL;
            }
            if (res->val.func->para != NULL){
                error(9, rt->info.lineNo);
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
            error(12, rt->info.lineNo);
            return NULL;
        }
        if (!isVar(left)) return NULL;
        if (!isArray(left->type)){
            error(10, rt->info.lineNo);
            return NULL;
        }
        left->type = left->type->u.array.elem;
        return left;
    }
    MT2("DOT"){//Exp DOT ID0
        expVal left = Exp(ONE(rt), rt, depth + 1);
        char* name = ID0(THREE(rt), rt, depth + 1);
        //检查left为左值
        if (!isVar(left)) return NULL;
        if (!isStructure(left->type)){
            error(13, rt->info.lineNo);
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
            error(14, rt->info.lineNo);//未找到域名
            return NULL;
        }
        left->type = p->type;
        return left;
    }
    MT2("ASSIGNOP"){
        expVal left = Exp(ONE(rt), rt, depth + 1);
        expVal right = Exp(THREE(rt), rt, depth + 1);
        if (right == NULL){return NULL;}
        if (!isVar(left)){
            error(6, rt->info.lineNo);
            return NULL;
        }
        if (!isSameType(left->type, right->type)){
            error(5, rt->info.lineNo);
            return NULL;
        }
        if (isArray(left->type)){
            error(7, rt->info.lineNo);
            return NULL;
        }
        left->lr = R_VAL;
        return left;
    }
    if((strcmp(TWO(rt)->name, "AND") == 0) || (strcmp(TWO(rt)->name, "OR") == 0)){
        expVal left = Exp(ONE(rt), rt, depth + 1);
        expVal right = Exp(THREE(rt), rt, depth + 1);
        if (left == NULL || right == NULL){
            error(7, rt->info.lineNo);
            return NULL;
        }
        if (!isSameType(left->type, right->type)){
            error(7, rt->info.lineNo);
            Exp(THREE(rt), rt, depth + 1);
            return NULL;
        }
        if (!(isInt(left->type))){
            error(7, rt->info.lineNo);
            return NULL;
        }
        left->lr = R_VAL;
        return left;
    }
    char* op2Name[8] = {"RELOP", "PLUS", "MINUS", "STAR", "DIV"};
    for(int i = 0; i < 8; i++){//AND OR RELOP PLUS MINUS STAR DIV
        if (TWO(rt) != NULL && strcmp(TWO(rt)->name, op2Name[i]) == 0){
            expVal left = Exp(ONE(rt), rt, depth + 1);
            expVal right = Exp(THREE(rt), rt, depth + 1);
            if (left == NULL || right == NULL){
                error(7, rt->info.lineNo);
                return NULL;
            }
            if (!isSameType(left->type, right->type)){
                error(7, rt->info.lineNo);
                Exp(THREE(rt), rt, depth + 1);
                return NULL;
            }
            if (!(isInt(left->type) || isFloat(left->type))){
                error(7, rt->info.lineNo);
                return NULL;
            }
            if (strcmp(op2Name[i], "RELOP") == 0){
                left->type->u.basic = type_int;
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
    funcItem *key;
    map_iter_t iter = map_iter(&funcTable);

    while ((key = map_next(&funcTable, &iter))) {
        funcItem func = *map_get(&funcTable, key);
        if (!func->isDef){
            for(int i = 0; i < func->lineSum; i++){
                error(18, func->lineNo[i]);
            }
        }
    }
}