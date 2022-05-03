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
listHead* Program0(TreeNode* rt) { 
    createList(&funcBlock);
	 switch(rt->no) {
		case 1: Program1(rt); break; 
	}
    return funcBlock;
}

void Program1(TreeNode* rt) { 
    ExtDefList0(ONE(rt));
}

void ExtDefList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: ExtDefList1(rt); break; 
		case 2: ExtDefList2(rt); break; 
	}
}

void ExtDefList1(TreeNode* rt) { 
    ExtDef0(ONE(rt)); ExtDefList0(TWO(rt));
}

void ExtDefList2(TreeNode* rt) { 

}

void ExtDef0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: ExtDef1(rt); break; 
		case 2: ExtDef2(rt); break; 
		case 3: ExtDef3(rt); break; 
	}
}

void ExtDef1(TreeNode* rt) { 

}

void ExtDef2(TreeNode* rt) { 

}

void generateFuncHead(char* funcName){
    funcItem func = *map_get(&funcTable, funcName);
    addTriple(t_func, getOperand(o_func, o_normal, func), NULL, NULL);
    for(FieldList p = func->para; p; p = p->tail){
        addTriple(t_param, getOperand(o_var, o_normal, *map_get(&localVarTable, p->name)), NULL, NULL);
    }
}

void ExtDef3(TreeNode* rt) { //函数定义
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

void ExtDecList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: ExtDecList1(rt); break; 
		case 2: ExtDecList2(rt); break; 
	}
}

void ExtDecList1(TreeNode* rt) { 

}

void ExtDecList2(TreeNode* rt) { 

}

void Specifier0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Specifier1(rt); break; 
		case 2: Specifier2(rt); break; 
	}
}

void Specifier1(TreeNode* rt) { 

}

void Specifier2(TreeNode* rt) { 

}

void StructSpecifier0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: StructSpecifier1(rt); break; 
		case 2: StructSpecifier2(rt); break; 
	}
}

void StructSpecifier1(TreeNode* rt) { 

}

void StructSpecifier2(TreeNode* rt) { 

}

void OptTag0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: OptTag1(rt); break; 
		case 2: OptTag2(rt); break; 
	}
}

void OptTag1(TreeNode* rt) { 

}

void OptTag2(TreeNode* rt) { 

}

void Tag0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Tag1(rt); break; 
	}
}

void Tag1(TreeNode* rt) { 

}

char* VarDec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: return VarDec1(rt); break; 
		case 2: return VarDec2(rt); break; 
	}
}

char* VarDec1(TreeNode* rt) { 
    return ID0(ONE(rt));
}

char* VarDec2(TreeNode* rt) { 
    return VarDec0(ONE(rt));
}

char* FunDec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: return FunDec1(rt); break; 
		case 2: return FunDec2(rt); break; 
	}
}

char* FunDec1(TreeNode* rt) { 
    return ID0(ONE(rt), NULL, 0);
}

char* FunDec2(TreeNode* rt) { 
    return ID0(ONE(rt), NULL, 0);
}

void VarList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: VarList1(rt); break; 
		case 2: VarList2(rt); break; 
	}
}

void VarList1(TreeNode* rt) { 

}

void VarList2(TreeNode* rt) { 

}

void ParamDec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: ParamDec1(rt); break; 
		case 2: ParamDec2(rt); break; 
	}
}

void ParamDec1(TreeNode* rt) { 

}

void ParamDec2(TreeNode* rt) { 

}

void Compst0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Compst1(rt); break; 
	}
}

void Compst1(TreeNode* rt) { 
    DefList0(TWO(rt));
    StmtList0(THREE(rt));
}

void StmtList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: StmtList1(rt); break; 
		case 2: StmtList2(rt); break; 
	}
}

void StmtList1(TreeNode* rt) { 

}

void StmtList2(TreeNode* rt) { 

}

void Stmt0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Stmt1(rt); break; 
		case 2: Stmt2(rt); break; 
		case 3: Stmt3(rt); break; 
		case 4: Stmt4(rt); break; 
		case 5: Stmt5(rt); break; 
		case 6: Stmt6(rt); break; 
	}
}

void Stmt1(TreeNode* rt) { 

}

void Stmt2(TreeNode* rt) { 

}

void Stmt3(TreeNode* rt) { 

}

void Stmt4(TreeNode* rt) { 

}

void Stmt5(TreeNode* rt) { 

}

void Stmt6(TreeNode* rt) { 

}

void DefList0(TreeNode* rt) { 
	switch(rt->no) {
		case 1: DefList1(rt); break; 
		case 2: DefList2(rt); break; 
	}
}

void DefList1(TreeNode* rt) { 
    Def0(ONE(rt));
    DefList0(TWO(rt));
}

void DefList2(TreeNode* rt) { 

}

void Def0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Def1(rt); break; 
	}
}

void Def1(TreeNode* rt) { 
    DecList0(TWO(rt));
}

void DecList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: DecList1(rt); break; 
		case 2: DecList2(rt); break; 
	}
}

void DecList1(TreeNode* rt) { 
    Dec0(ONE(rt));
}

void DecList2(TreeNode* rt) { 
    Dec0(ONE(rt));
    DecList0(THREE(rt));
}

void Dec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Dec1(rt); break; 
		case 2: Dec2(rt); break; 
	}
}

void Dec1(TreeNode* rt) { 
 
}

void Dec2(TreeNode* rt) { 
    char* name = VarDec0(ONE(rt));
    Operand* exp = Exp0(THREE(rt));
    addTriple(t_assign, getOperand(o_var, o_normal, *map_get(&localVarTable, name)), exp, NULL);
}

listHead* Exp0(TreeNode* rt, int place) { 
	 switch(rt->no) {
		case 1: return Exp1(rt, place); break; 
		case 2: return Exp2(rt, place); break; 
		case 3: return Exp3(rt, place); break; 
		case 4: return Exp4(rt, place); break; 
		case 5: return Exp5(rt, place); break; 
		case 6: return Exp6(rt, place); break; 
		case 7: return Exp7(rt, place); break; 
		case 8: return Exp8(rt, place); break; 
		case 9: return Exp9(rt, place); break; 
		case 10: return Exp10(rt, place); break; 
		case 11: return Exp11(rt, place); break; 
		case 12: return Exp12(rt, place); break; 
		case 13: return Exp13(rt, place); break; 
		case 14: return Exp14(rt, place); break; 
		case 15: return Exp15(rt, place); break; 
		case 16: return Exp16(rt, place); break; 
		case 17: return Exp17(rt, place); break; 
		case 18: return Exp18(rt, place); break; 
	}
}

listHead* Exp1(TreeNode* rt, int place) { //ASSIGN OP
    listHead* left = Exp0(ONE(rt));
    listHead* right = Exp0(THREE(rt));

}

listHead* Exp2(TreeNode* rt, int place) { 

}

listHead* Exp3(TreeNode* rt, int place) { 

}

listHead* Exp4(TreeNode* rt, int place) { 

}

listHead* Exp5(TreeNode* rt, int place) { 

}

listHead* Exp6(TreeNode* rt, int place) { 

}

listHead* Exp7(TreeNode* rt, int place) { 

}

listHead* Exp8(TreeNode* rt, int place) { 

}

listHead* Exp9(TreeNode* rt, int place) { 

}

listHead* Exp10(TreeNode* rt, int place) { 

}

listHead* Exp11(TreeNode* rt, int place) { 

}

listHead* Exp12(TreeNode* rt, int place) { 

}

listHead* Exp13(TreeNode* rt, int place) { 

}

listHead* Exp14(TreeNode* rt, int place) { 

}

listHead* Exp15(TreeNode* rt, int place) { 

}

listHead* Exp16(TreeNode* rt, int place) { 

}

listHead* Exp17(TreeNode* rt, int place) { 

}

listHead* Exp18(TreeNode* rt, int place) { 

}

void Args0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Args1(rt); break; 
		case 2: Args2(rt); break; 
	}
}

void Args1(TreeNode* rt) { 

}

void Args2(TreeNode* rt) { 

}

