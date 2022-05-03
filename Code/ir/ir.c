#include "ir.h"
#include "../utils/list/list.h"
#include "../utils/syntaxTree/treeNode.h"



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

Operand* getOperand(enum Otype_ type, enum Oproperty_ property, void* val){
    Operand op = malloc(sizeof(Operand_));
    op->type = type;
    op->property = property;
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

void VarDec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: VarDec1(rt); break; 
		case 2: VarDec2(rt); break; 
	}
}

void VarDec1(TreeNode* rt) { 

}

void VarDec2(TreeNode* rt) { 

}

char* FunDec0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: return FunDec1(rt); break; 
		case 2: return FunDec2(rt); break; 
	}
}

char* FunDec1(TreeNode* rt) { 
    return ID(ONE(rt), NULL, 0);
}

char* FunDec2(TreeNode* rt) { 
    return ID(ONE(rt), NULL, 0);
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

}

void DefList2(TreeNode* rt) { 

}

void Def0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Def1(rt); break; 
	}
}

void Def1(TreeNode* rt) { 

}

void DecList0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: DecList1(rt); break; 
		case 2: DecList2(rt); break; 
	}
}

void DecList1(TreeNode* rt) { 

}

void DecList2(TreeNode* rt) { 

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

}

void Exp0(TreeNode* rt) { 
	 switch(rt->no) {
		case 1: Exp1(rt); break; 
		case 2: Exp2(rt); break; 
		case 3: Exp3(rt); break; 
		case 4: Exp4(rt); break; 
		case 5: Exp5(rt); break; 
		case 6: Exp6(rt); break; 
		case 7: Exp7(rt); break; 
		case 8: Exp8(rt); break; 
		case 9: Exp9(rt); break; 
		case 10: Exp10(rt); break; 
		case 11: Exp11(rt); break; 
		case 12: Exp12(rt); break; 
		case 13: Exp13(rt); break; 
		case 14: Exp14(rt); break; 
		case 15: Exp15(rt); break; 
		case 16: Exp16(rt); break; 
		case 17: Exp17(rt); break; 
		case 18: Exp18(rt); break; 
	}
}

void Exp1(TreeNode* rt) { 

}

void Exp2(TreeNode* rt) { 

}

void Exp3(TreeNode* rt) { 

}

void Exp4(TreeNode* rt) { 

}

void Exp5(TreeNode* rt) { 

}

void Exp6(TreeNode* rt) { 

}

void Exp7(TreeNode* rt) { 

}

void Exp8(TreeNode* rt) { 

}

void Exp9(TreeNode* rt) { 

}

void Exp10(TreeNode* rt) { 

}

void Exp11(TreeNode* rt) { 

}

void Exp12(TreeNode* rt) { 

}

void Exp13(TreeNode* rt) { 

}

void Exp14(TreeNode* rt) { 

}

void Exp15(TreeNode* rt) { 

}

void Exp16(TreeNode* rt) { 

}

void Exp17(TreeNode* rt) { 

}

void Exp18(TreeNode* rt) { 

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

