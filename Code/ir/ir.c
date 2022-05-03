#include "ir.h"
#include "../utils/list/list.h"
#include "../utils/syntaxTree/treeNode.h"
#include <stdarg.h>

listHead* funcBlock;
listHead* tripleList;

int tmpSum = 0;
int labelSum = 0;
void printTripe(listHead* funcBlock){
    for(funcNode p = funcBlock->head; p; p = p->next){
        for(tripleNode q = p->val->head; q; q = q->next){
            TripleExp tri = q->val;
            switch (tri->type){
            case t_func:
                printf("FUNCTION %s :\n", tri->dest->u.funcPoint->name);
                break;
            case t_param:
                printf("PARAM %s\n", tri->dest->u.varPoint->name);
                break;
            default:
                break;
            }
        }
    }
}
void addTriple(enum Ttype_ type, Operand dest, Operand src1, Operand src2){
    TripleExp tri = malloc(sizeof(TripleExp_));
    tri->type = type;
    tri->src1 = src1;
    tri->src2 = src2;
    tri->dest = dest;
    tripleNode triNode = malloc(sizeof(tripleNode_));
    triNode->val = tri;
    triNode->property = NULL;
    push_back(tripleList, triNode);
}

Operand* getOperand(enum Otype_ type, enum Oproperty_ property, void* val, ...){
    Operand op = malloc(sizeof(Operand_));
    op->type = type;
    op->property = property;
    va_list valist;
    va_start(valist, val);
    switch (type)
    {
        case o_const:
            op->u.constInt = (int)val;
            break;
        case o_label:
            labelSum++;
            op->u.labelId = labelSum;
            break;
        case o_var:
            op->u.varPoint = (varItem) val;
            break;
        case o_tmpVar:
            tmpSum++;
            op->u.tmpId = tmpSum;
            break;
        case o_func:
            op->u.funcPoint = (funcItem) val;
    }
    switch (property)
    {
        case o_offset:
            op->addtion.offsize = va_arg(valist, int);
            break;
        case o_size:
            op->addtion.size = va_arg(valist, int);
            break;
    }
    va_end(valist);
    return op;
}


gen_Program(0) { 
	 switch(rt->no) {
		case 1: call_Program(1); break; 
	}
}

gen_Program(1) { 
    ExtDefList0(ONE(rt));
}

gen_ExtDefList(0) { 
	 switch(rt->no) {
		case 1: call_ExtDefList(1); break; 
		case 2: call_ExtDefList(2); break; 
	}
}

gen_ExtDefList(1) { 

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
        addTriple(t_param, getOperand(o_var, o_normal, *map_get(&localVarTable, p->name)), NULL, NULL);
    }
}

gen_ExtDef(3) { 
    Specifier0(ONE(rt));
    {

    }

    char* funName = FunDec0(TWO(rt));
    {
        createList(&tripleList);
        generateFuncHead(funName);
    }

    Compst0(THREE(rt));
    {
        funcNode node = malloc(sizeof(funcNode_));
        node->val = tripleList;
        node->property = *map_get(&funcTable, funName);
        push_back(funcBlock, node);
    }
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

}

gen_VarDec(2) { 

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
    DefList0(TWO(rt));
    StmtList0(THREE(rt));
}

gen_StmtList(0) { 
	 switch(rt->no) {
		case 1: call_StmtList(1); break; 
		case 2: call_StmtList(2); break; 
	}
}

gen_StmtList(1) { 

}

gen_StmtList(2) { 

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

}

gen_Stmt(2) { 

}

gen_Stmt(3) { 

}

gen_Stmt(4) { 

}

gen_Stmt(5) { 

}

gen_Stmt(6) { 

}

gen_DefList(0) { 
	 switch(rt->no) {
		case 1: call_DefList(1); break; 
		case 2: call_DefList(2); break; 
	}
}

gen_DefList(1) { 
    Def0(ONE(rt));
    DefList0(TWO(rt));
}

gen_DefList(2) { 

}

gen_Def(0) { 
	 switch(rt->no) {
		case 1: call_Def(1); break; 
	}
}

gen_Def(1) { 
    DecList0(TWO(rt));
}

gen_DecList(0) { 
	 switch(rt->no) {
		case 1: call_DecList(1); break; 
		case 2: call_DecList(2); break; 
	}
}

gen_DecList(1) { 
    Dec0(ONE(rt));
}

gen_DecList(2) { 
    Dec0(ONE(rt));
    DecList0(THREE(rt));
}

gen_Dec(0) { 
	 switch(rt->no) {
		case 1: call_Dec(1); break; 
		case 2: call_Dec(2); break; 
	}
}

gen_Dec(1) { 

}

gen_Dec(2) { 

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
	}
}

gen_Exp(1) { 
    listHead* left = Exp0(ONE(rt), place);
    listHead* right = Exp0(THREE(rt), place);
}

gen_Exp(2) { 

}

gen_Exp(3) { 

}

gen_Exp(4) { 

}

gen_Exp(5) { 

}

gen_Exp(6) { 

}

gen_Exp(7) { 

}

gen_Exp(8) { 

}

gen_Exp(9) { 

}

gen_Exp(10) { 

}

gen_Exp(11) { 

}

gen_Exp(12) { 

}

gen_Exp(13) { 

}

gen_Exp(14) { 

}

gen_Exp(15) { 

}

gen_Exp(16) { 

}

gen_Exp(17) { 

}

gen_Exp(18) { 

}

gen_Args(0) { 
	 switch(rt->no) {
		case 1: call_Args(1); break; 
		case 2: call_Args(2); break; 
	}
}

gen_Args(1) { 

}

gen_Args(2) { 

}

