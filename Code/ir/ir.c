#include "ir.h"
#include "../utils/list/list.h"
#include "../utils/syntaxTree/treeNode.h"
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>



listHead* funcBlock;
listHead* tripleList;
typedef unsigned int tmpId; 
typedef unsigned int labelId;
tmpId tmpSum = 0;
labelId labelSum = 0;
map_int_t paraTable;
int findWrong = 0;
//typedef map_t(int) map_int_t;
tripleNode getTriple(enum Ttype_ type, Operand dest, Operand src1, Operand src2){
    TripleExp tri = malloc(sizeof(TripleExp_));
    tri->type = type;
    tri->src1 = src1;
    tri->src2 = src2;
    tri->dest = dest;
    tripleNode triNode = malloc(sizeof(tripleNode_));
    triNode->val = tri;
    triNode->property = NULL;
    triNode->next = NULL;
    triNode->pre = NULL;
    return triNode;
}

void addTriple(enum Ttype_ type, Operand dest, Operand src1, Operand src2){
    push_back(tripleList, getTriple(type, dest, src1, src2));
}


Operand getOperand(enum Otype_ type, enum Oproperty_ property, ...){
    Operand op = malloc(sizeof(Operand_));
    op->type = type;
    op->property = property;
    va_list valist;
    va_start(valist, property);
    switch (type)
    {
        case o_const:
            op->u.constInt = va_arg(valist, int);
            break;
        case o_label:
            op->u.labelId = va_arg(valist, labelId);
            break;
        case o_var:
            op->u.varPoint = va_arg(valist, varItem);
            break;
        case o_tmpVar:
            op->u.tmpId = va_arg(valist, tmpId);
            break;
        case o_func:
            op->u.funcPoint = va_arg(valist, funcItem);
    }
    switch (property)
    {
        case o_size:
            op->addtion.size = va_arg(valist, int);
            break;
    }
    va_end(valist);
    return op;
}

OperandNode getOperandNode(Operand op){
    OperandNode tmp = malloc(sizeof(OperandNode_));
    tmp->val = op;
    return tmp;
}

Operand new_tmp(){
    tmpSum++;
    return getOperand(o_tmpVar, o_normal, tmpSum);
}

Operand new_label(){
    labelSum++;
    return getOperand(o_label, o_normal, labelSum);
}

int newTmp(){
    return ++tmpSum;
}

int newLabel(){
    return ++labelSum;
}

Operand op_Imm(int val){
    return getOperand(o_const, o_normal, val);
}

Operand op_Tmp(int val){
    return getOperand(o_tmpVar, o_normal, val);
}

Operand op_Var(varItem var){
    return getOperand(o_var, o_normal, var);
}

Operand op_Fun(funcItem func){
    return getOperand(o_func, o_normal, func);
}

Operand op_Point(Operand op){
    op->property = o_point;
    return op;
}

Operand op_Address(Operand op){
    op->property = o_address;
    return op;
}

void addLabel(listHead* code, Operand a){
    push_back(code, getTriple(t_label, a, NULL, NULL));
}

void addAssignI(listHead* code, Operand dest, int val){
    push_back(code, getTriple(t_assign, dest, getOperand(o_const, o_normal, val), NULL));
}

void addAssignR(listHead* code, Operand dest, Operand src){
    push_back(code, getTriple(t_assign, dest, src, NULL));
}

void addGoto(listHead* code, Operand dest){
    push_back(code, getTriple(t_goto, dest, NULL, NULL ));
}

void addCode(listHead* src, listHead* dest){
    append_list(src, dest);
}

size_t getStructureSize(Type t){
    size_t size = 0;
    FieldList p = t->u.structure;
    while(p){
        Type item = p->type;
        size_t totalSize, baseSize;
        switch(item->kind){
            case BASIC:
                size += 4;
                break;
            case ARRAY:
                getArraySize(item, &totalSize, &baseSize);
                size += totalSize;
                //size += getArraySize(item);
                break;
            case STRUCTURE:
                size += getStructureSize(item);
                break;
        }
        p = p->tail;
    }
    return size;
}


void getArraySize(Type t, size_t* totalSize, size_t* baseSize){
    size_t size = 1;
    Type p = t;
    while(p->kind == ARRAY){
        size = size * p->u.array.size;
        p = p->u.array.elem;
    }
    if (p->kind == BASIC){
        (*baseSize) = 4;
        size *= (*baseSize);
        (*totalSize) = size;
    }else{
        (*baseSize) = getStructureSize(p);
        size *= (*baseSize);
        (*totalSize) = size;
    }
}

size_t getTypeSize(Type type){
    size_t totalSize, baseSize;
    switch(type->kind){
        case BASIC:
            return 4;
        case ARRAY:
            getArraySize(type, &totalSize, &baseSize);
            return totalSize;
        case STRUCTURE:
            return getStructureSize(type);
    }
}


gen_Program(0) { 
    createList(&funcBlock);
    map_init(&paraTable);
	 switch(rt->no) {
		case 1: call_Program(1); break; 
	}
    if (findWrong) return NULL;
    return funcBlock;
}

gen_Program(1) { 
    ExtDefList0(ONE(rt));
    return NULL;
}

gen_ExtDefList(0) { 
	 switch(rt->no) {
		case 1: call_ExtDefList(1); break; 
		case 2: call_ExtDefList(2); break; 
	}
}

gen_ExtDefList(1) { 
    ExtDef0(ONE(rt));
    ExtDefList0(TWO(rt));
}

gen_ExtDefList(2) { 

}

gen_ExtDef(0) { 
	 switch(rt->no) {
		case 1: call_ExtDef(1); break; 
		case 2: call_ExtDef(2); break; 
		case 3: call_ExtDef(3); break; 
	}
}

gen_ExtDef(1) { 

}

gen_ExtDef(2) { 

}

void generateFuncHead(char* funcName){
    funcItem func = *map_get(&funcTable, funcName);
    addTriple(t_func, getOperand(o_func, o_normal, func), NULL, NULL);
    for(FieldList p = func->para; p; p = p->tail){
        map_set(&paraTable, p->name, 1);
        if (p->type->kind == ARRAY){
            if (!findWrong) fprintf(stderr, "Cannot translate: Code contains variables of multi-dimensional array type or parameters of array type.\n");
            findWrong = 1;
        }
        addTriple(t_param, getOperand(o_var, o_normal, *map_get(&localVarTable, p->name)), NULL, NULL);
    }
}

gen_ExtDef(3) { 
    char* funName = FunDec0(TWO(rt));
    
    createList(&tripleList);
    generateFuncHead(funName);

    addCode(tripleList, Compst0(THREE(rt)));
    
    funcNode node = malloc(sizeof(funcNode_));
    node->val = tripleList;
    node->property = *map_get(&funcTable, funName);
    push_back(funcBlock, node);
    
}

gen_ExtDecList(0) { 
	 switch(rt->no) {
		case 1: call_ExtDecList(1); break; 
		case 2: call_ExtDecList(2); break; 
	}
}

gen_ExtDecList(1) { 

}

gen_ExtDecList(2) { 

}

gen_Specifier(0) { 
	 switch(rt->no) {
		case 1: call_Specifier(1); break; 
		case 2: call_Specifier(2); break; 
	}
}

gen_Specifier(1) { 

}

gen_Specifier(2) { 

}

gen_StructSpecifier(0) { 
	 switch(rt->no) {
		case 1: call_StructSpecifier(1); break; 
		case 2: call_StructSpecifier(2); break; 
	}
}

gen_StructSpecifier(1) { 

}

gen_StructSpecifier(2) { 

}

gen_OptTag(0) { 
	 switch(rt->no) {
		case 1: call_OptTag(1); break; 
		case 2: call_OptTag(2); break; 
	}
}

gen_OptTag(1) { 

}

gen_OptTag(2) { 

}

gen_Tag(0) { 
	 switch(rt->no) {
		case 1: call_Tag(1); break; 
	}
}

gen_Tag(1) { 

}

gen_VarDec(0) { 
	 switch(rt->no) {
		case 1: call_VarDec(1); break; 
		case 2: call_VarDec(2); break; 
	}
}

gen_VarDec(1) { 
    char* varName = ID0(ONE(rt), NULL, 0);
    if (isLocalDef){
        varItem var = *map_get(&localVarTable, varName);
        if (var->type->kind != BASIC)
            push_back(code, getTriple(t_dec, getOperand(o_var, o_size, var, getTypeSize(var->type)), NULL, NULL));
    }
    return ID0(ONE(rt), NULL,0);
}

gen_VarDec(2) { 
    return VarDec0(ONE(rt), isLocalDef, code);
}

gen_FunDec(0) { 
	 switch(rt->no) {
		case 1: call_FunDec(1); break; 
		case 2: call_FunDec(2); break; 
	}
}

gen_FunDec(1) { 
    return ID0(ONE(rt), NULL, 0);
}

gen_FunDec(2) { 
    return ID0(ONE(rt), NULL, 0);
}

gen_VarList(0) { 
	 switch(rt->no) {
		case 1: call_VarList(1); break; 
		case 2: call_VarList(2); break; 
	}
}

gen_VarList(1) { 

}

gen_VarList(2) { 

}

gen_ParamDec(0) { 
	 switch(rt->no) {
		case 1: call_ParamDec(1); break; 
		case 2: call_ParamDec(2); break; 
	}
}

gen_ParamDec(1) { 

}

gen_ParamDec(2) { 

}

gen_Compst(0) { 
	 switch(rt->no) {
		case 1: call_Compst(1); break; 
	}
}

gen_Compst(1) { 
    list code1 = DefList0(TWO(rt));
    list code2 = StmtList0(THREE(rt));
    if (!code1) return code2;
    addCode(code1, code2);
    return code1;
}

gen_StmtList(0) { 
	 switch(rt->no) {
		case 1: call_StmtList(1); break; 
		case 2: call_StmtList(2); break; 
	}
}

gen_StmtList(1) { 
    list code1 = Stmt0(ONE(rt));
    list code2 = StmtList0(TWO(rt));
    addCode(code1, code2);
    return code1;
}

gen_StmtList(2) { 
    return NULL;
}

gen_Stmt(0) { 
	 switch(rt->no) {
		case 1: call_Stmt(1); break; 
		case 2: call_Stmt(2); break; 
		case 3: call_Stmt(3); break; 
		case 4: call_Stmt(4); break; 
		case 5: call_Stmt(5); break; 
		case 6: call_Stmt(6); break; 
	}
}

gen_Stmt(1) { 
    Operand t1 = new_tmp();
    return Exp0(ONE(rt), t1);
}

gen_Stmt(2) { 
    return Compst0(ONE(rt));
}

gen_Stmt(3) { 
    Operand t1 = new_tmp();
    list code1 = Exp0(TWO(rt), t1);
    push_back(code1, getTriple(t_return, t1, NULL, NULL));
    return code1;
}

gen_Stmt(4) { 
    Operand label1, label2;
    label1 = new_label();
    label2 = new_label();
    list code1 = ExpCond0(THREE(rt), label1, label2);
    list code2 = Stmt0(FIVE(rt));
    addLabel(code1, label1);
    addCode(code1, code2);
    addLabel(code1, label2);
    return code1;
}

gen_Stmt(5) { 
    Operand label1, label2, label3;
    label1 = new_label();
    label2 = new_label();
    label3 = new_label();
    list code1 = ExpCond0(THREE(rt), label1, label2);
    list code2 = Stmt0(FIVE(rt));
    list code3 = Stmt0(FIVE(rt)->bro->bro);
    addLabel(code1, label1);
    addCode(code1, code2);
    addGoto(code1, label3);
    addLabel(code1, label2);
    addCode(code1, code3);
    addLabel(code1, label3);
    return code1;
}

gen_Stmt(6) { 
    Operand label1, label2, label3;
    label1 = new_label();
    label2 = new_label();
    label3 = new_label();
    list code1 = ExpCond0(THREE(rt), label2, label3);
    list code2 = Stmt0(FIVE(rt));
    push_front(code1, getTriple(t_label, label1, NULL, NULL));
    addLabel(code1, label2);
    addCode(code1, code2);
    addGoto(code1, label1);
    addLabel(code1, label3);
    return code1;
}

gen_DefList(0) { 
	 switch(rt->no) {
		case 1: call_DefList(1); break; 
		case 2: call_DefList(2); break; 
	}
}

gen_DefList(1) { 
    list code1 = Def0(ONE(rt));
    list code2 = DefList0(TWO(rt));
    addCode(code1, code2);
    return code1;
}

gen_DefList(2) { 
    return NULL;
}

gen_Def(0) { 
	 switch(rt->no) {
		case 1: call_Def(1); break; 
	}
}

gen_Def(1) { 
    return DecList0(TWO(rt));
}

gen_DecList(0) { 
	 switch(rt->no) {
		case 1: call_DecList(1); break; 
		case 2: call_DecList(2); break; 
	}
}

gen_DecList(1) { 
    return Dec0(ONE(rt));
}

gen_DecList(2) { 
    list code1 = Dec0(ONE(rt));
    list code2 = DecList0(THREE(rt));
    addCode(code1, code2);
    return code1;
}

gen_Dec(0) { 
	 switch(rt->no) {
		case 1: call_Dec(1); break; 
		case 2: call_Dec(2); break; 
	}
}

gen_Dec(1) { 
    list code;
    createList(&code);
    VarDec0(ONE(rt), 1, code);
    return code;
}

gen_Dec(2) { 
    list code;
    createList(&code);
    char* varName = VarDec0(ONE(rt), 1, code);
    Operand tmpVar = new_tmp();
    listHead* exp = Exp0(THREE(rt), tmpVar);
    addCode(code, exp);
    varItem var = *map_get(&localVarTable, varName);
    push_back(code, getTriple(t_assign, getOperand(o_var, o_normal, var), tmpVar, NULL));
    return code;
}

gen_Exp(0) { 
	 switch(rt->no) {
		case 1: call_Exp(1); break; 
		case 2: call_Exp(2); break; 
		case 3: call_Exp(3); break; 
		case 4: call_Exp(4); break; 
		case 5: call_Exp(5); break; 
		case 6: call_Exp(6); break; 
		case 7: call_Exp(7); break; 
		case 8: call_Exp(8); break; 
		case 9: call_Exp(9); break; 
		case 10: call_Exp(10); break; 
		case 11: call_Exp(11); break; 
		case 12: call_Exp(12); break; 
		case 13: call_Exp(13); break; 
		case 14: call_Exp(14); break; 
		case 15: call_Exp(15); break; 
		case 16: call_Exp(16); break; 
		case 17: call_Exp(17); break; 
		case 18: call_Exp(18); break; 
        case 19: call_Exp(19); break;
	}
}

gen_Exp(1) { //ASSIGNOP
   //Operand leftPlace = new_tmp();
    Operand rightPlace = new_tmp();
    listHead* left = localVal(ONE(rt), place);
    listHead* right = Exp0(THREE(rt), rightPlace);
    addCode(left, right);
    addAssignR(left, place, rightPlace);
    //addAssignR(left, place, leftPlace);
    return left;
}

gen_Exp(2) { //AND
    Operand label1 = new_label();
    Operand label2 = new_label();
    listHead* code;
    createList(&code);
    addAssignI(code, place, 0);
    addCode(code, ExpCond0(rt, label1, label2));
    addLabel(code, label1);
    addAssignI(code, place, 1);
    addLabel(code, label2);
    return code;
}

gen_Exp(3) { //OR
    call_Exp(2);
}

gen_Exp(4) { //RELOP
    call_Exp(2);
}

gen_Exp(5) { //ADD
    Operand t1 = new_tmp();
    Operand t2 = new_tmp();
    listHead* code1 = Exp0(ONE(rt), t1);
    listHead* code2 = Exp0(THREE(rt), t2);
    addCode(code1, code2);
    push_back(code1, getTriple(t_add, place, t1, t2));
    return code1;
}

gen_Exp(6) { //SUB
    listHead* code = Exp5(rt, place);
    ((tripleNode) get_back(code))->val->type = t_sub;
    return code;
}

gen_Exp(7) { //STAR
    listHead* code = Exp5(rt, place);
    ((tripleNode) get_back(code))->val->type = t_star;
    return code;
}

gen_Exp(8) { //DIV
    listHead* code = Exp5(rt, place);
    ((tripleNode) get_back(code))->val->type = t_div;
    return code;
}

gen_Exp(9) { //()
    return Exp0(TWO(rt), place);
}

gen_Exp(10) { //MINUS
    Operand t1 = new_tmp();
    listHead* code = Exp0(TWO(rt), t1);
    push_back(code, getTriple(t_sub, place, op_Imm(0), t1));
    return code;
}

gen_Exp(12) { //NOT
    call_Exp(2);
}

gen_Exp(11){ //PLUS
    Operand t1 = new_tmp();
    listHead* code = Exp0(TWO(rt), t1);
    push_back(code, getTriple(t_add, place, op_Imm(0), t1));
    return code;
}
gen_Exp(13) { //ID LP Args RP
    char* funcName = ID0(ONE(rt), 0, 0);
    listHead* paraList;
    createList(&paraList);
    list code = Args0(THREE(rt), paraList);
    if (strcmp(funcName, "write") == 0){
        OperandNode p = paraList->head;
        push_back(code, getTriple(t_write, p->val, NULL, NULL));
        addAssignI(code, place, 0);
        return code;
    }
    for(OperandNode p = paraList->head; p; p = p->next){
        if (p->val->type == o_var && map_get(&paraTable, p->val->u.varPoint->name) == NULL && p->val->u.varPoint->type->kind != BASIC){
            push_back(code, getTriple(t_arg, op_Address(p->val), NULL, NULL));
        }
        else{
            push_back(code, getTriple(t_arg, p->val, NULL, NULL));
        }
    }
    push_back(code, getTriple(t_call, place, getOperand(o_func, o_normal, *map_get(&funcTable, funcName)), NULL));
    return code;
}

gen_Exp(14) { //ID LP RP
    char* funcName = ID0(ONE(rt), 0, 0);
    listHead* code;
    createList(&code);
    if (strcmp(funcName, "read") == 0){
        push_back(code, getTriple(t_read, place, NULL, NULL));
    }else{
        push_back(code, getTriple(t_call, place, getOperand(o_func, o_normal, *map_get(&funcTable, funcName)), NULL));
    }
    return code;
}

gen_Exp(15) { //Exp LB Exp RB
    return localVal(rt, place);
}

gen_Exp(16) { //Exp DOT ID
    return localVal(rt, place);
}

gen_Exp(17) { //ID
    return localVal(rt, place);
}

gen_Exp(18) { //INT
    int val = ONE(rt)->info.val_int;
    listHead* code;
    createList(&code);
    push_back(code, getTriple(t_assign, place, getOperand(o_const, o_normal, val), NULL));
    return code;
}

gen_Exp(19) { //FLOAT

}

gen_Args(0) { 
	 switch(rt->no) {
		case 1: call_Args(1); break; 
		case 2: call_Args(2); break; 
	}
}

gen_Args(1) { 
    list code1 = Args2(rt, paraList);
    list code2 = Args0(THREE(rt), paraList);
    addCode(code1, code2);
    return code1;
}

gen_Args(2) { 
    Operand t1 = new_tmp();
    list code = Exp0(ONE(rt), t1);
    push_front(paraList, getOperandNode(t1));
    return code;
}

gen_ExpCond(0){
    switch(rt->no){
        case 4:
            call_ExpCond(1);//RELOP
            break;
        case 12:
            call_ExpCond(2);//NOT
            break;
        case 2:
            call_ExpCond(3);//AND
        case 3:
            call_ExpCond(4);//OR
        default:
            call_ExpCond(5);//other
    }
}

enum Ttype_ get_relop(char* st){
    if (strcmp(st, "<") == 0) return t_l;
    if (strcmp(st, ">") == 0) return t_g;
    if (strcmp(st, "<=") == 0) return t_leq;
    if (strcmp(st, ">=") == 0) return t_geq;
    if (strcmp(st, "==") == 0) return t_eq;
    if (strcmp(st, "!=") == 0) return t_neq;
}

gen_ExpCond(1){
    Operand t1 = new_tmp();
    Operand t2 = new_tmp();
    list code1 = Exp0(ONE(rt), t1);
    list code2 = Exp0(THREE(rt), t2);
    enum Ttype_ ttype = get_relop(TWO(rt)->opName);
    addCode(code1, code2);
    push_back(code1, getTriple(ttype, labelTrue, t1, t2));
    addGoto(code1, labelFalse);
    return code1;
}

gen_ExpCond(2){
    return ExpCond0(TWO(rt), labelFalse, labelTrue);
}

gen_ExpCond(3){
    Operand label1 = new_label();
    list code1 = ExpCond0(ONE(rt), label1, labelFalse);
    list code2 = ExpCond0(THREE(rt), labelTrue, labelFalse);
    addLabel(code1, label1);
    addCode(code1, code2);
    return code1;
}

gen_ExpCond(4){
    Operand label1 = new_label();
    list code1 = ExpCond0(ONE(rt), labelTrue, label1);
    list code2 = ExpCond0(THREE(rt), labelTrue, labelFalse);
    addLabel(code1, label1);
    addCode(code1, code2);
    return code1;
}

gen_ExpCond(5){
    Operand t1 = new_tmp();
    list code1 = Exp0(rt, t1);
    push_back(code1, getTriple(t_neq, labelTrue, t1, op_Imm(0)));
    addGoto(code1, labelFalse);
    return code1;
}

gen_localVal{
    listHead* code;
    char* name;
    Operand address = new_tmp();
    Type type;
    Operand place1 = place;
    switch(rt->no){
        case 17:
            name = ID0(ONE(rt), NULL, 0);
            place->type = o_var;
            place->property = o_normal;
            place->u.varPoint = *map_get(&localVarTable, name);
            createList(&code);
            break;
        case 15:
        case 16:
           // place = new_tmp();
            code = genExpAddress(rt, place1->u.tmpId, &type);
            if (type->kind != BASIC) place1->property = o_normal;
            else place1->property = o_point;
            //push_back(code, getTriple(t_assign, place, place1, NULL));
            break;
    }
    return code;
}

Type ExpAddress(TreeNode* rt, int baseTmp, int offsetTmp, int isInterface, list code){
    switch(rt->no){
        case 15:
            if (isInterface) return ExpArray0(rt, baseTmp, offsetTmp, code);
            else return ExpArray1(rt, baseTmp, offsetTmp, code);
            break;
        case 16:
            return ExpStruct(rt, baseTmp, offsetTmp, code);
            break;
        case 17:
            return ExpAddressID(rt, baseTmp, offsetTmp, code);
    }
}

Type ExpArray0(TreeNode* rt, int baseTmp, int offsetTmp, list code){
    Type cur = ExpArray1(rt, baseTmp, offsetTmp, code);
    push_back(code, getTriple(t_star, op_Tmp(offsetTmp), op_Tmp(offsetTmp), op_Imm(getTypeSize(cur))));
    return cur;
}

Type ExpArray1(TreeNode* rt, int baseTmp, int offsetTmp, list code){
    Type cur = ExpAddress(ONE(rt), baseTmp, offsetTmp, 0, code);
    if (cur->u.array.elem->kind == ARRAY){
        if (!findWrong) fprintf(stderr, "Cannot translate: Code contains variables of multi-dimensional array type or parameters of array type.\n");
        findWrong = 1;
    }
    Operand id = new_tmp();
    list codeid = Exp0(THREE(rt), id);
    addCode(code, codeid);
    push_back(code, getTriple(t_star, op_Tmp(offsetTmp), op_Tmp(offsetTmp), op_Imm(cur->u.array.size)));
    push_back(code, getTriple(t_add, op_Tmp(offsetTmp), op_Tmp(offsetTmp), id));
    return cur->u.array.elem;
}

Type ExpStruct(TreeNode* rt, int baseTmp, int offsetTmp, list code){
    Type type = ExpAddress(ONE(rt), baseTmp, offsetTmp, 1, code);
    char* name = ID0(THREE(rt), NULL, 0);
    assert(type->kind == STRUCTURE);
    int offset = 0;
    FieldList p;
    for(p = type->u.structure; p; p = p->tail){
        if (strcmp(p->name, name) == 0){
                push_back(code, getTriple(t_add, op_Tmp(offsetTmp), op_Tmp(offsetTmp), op_Imm(offset)));
                push_back(code, getTriple(t_add, op_Tmp(baseTmp), op_Tmp(baseTmp), op_Tmp(offsetTmp)));
                push_back(code, getTriple(t_assign, op_Tmp(offsetTmp), op_Imm(0), NULL));
                break;
        }else{
            offset += getTypeSize(p->type);
        }
    }
    return p->type;
}

Type ExpAddressID(TreeNode* rt, int baseTmp, int offsetTmp, list code){
    char* name = ID0(ONE(rt), NULL, 0);
    varItem var = *map_get(&localVarTable, name);
    assert(var->type->kind != BASIC);
    push_back(code, getTriple(t_assign, op_Tmp(offsetTmp), op_Imm(0), NULL));
    if (map_get(&paraTable, name) != NULL){
        push_back(code, getTriple(t_assign, op_Tmp(baseTmp), op_Var(var), NULL));
    }else push_back(code, getTriple(t_assign, op_Tmp(baseTmp), op_Address(op_Var(var)), NULL));
    return var->type;
}

list genExpAddress(TreeNode* rt, int valTmp, Type* type){
    int baseTmp = newTmp(), offsetTmp = newTmp();
    list code;
    createList(&code);
    *type = ExpAddress(rt, baseTmp, offsetTmp, 1, code);
    push_back(code, getTriple(t_add, op_Tmp(valTmp), op_Tmp(baseTmp), op_Tmp(offsetTmp)));
    return code;
}



