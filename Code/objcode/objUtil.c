#include"objUtil.h"
#include "graph.h"
#include <stdio.h>
#include "../ir/ir.h"
void modifyIr(list funcBlock){
    if (funcBlock){
        for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
            for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
                TripleExp exp = q->val;
                if (exp->type == t_label || exp->type == t_func ||exp->type == t_goto ||exp->type == t_dec ||exp->type == t_param) continue;
                tripleNode pre = q->pre;
                while(pre->val->type == t_arg) pre = pre->pre;
                if (exp->src1 && exp->src1->property == o_point){
                    Operand tmp = new_tmp();
                    insert(p, pre, getTriple(t_assign, tmp, exp->src1, NULL));
                    exp->src1 = tmp;
                }
                if (exp->src2 && exp->src2->property == o_point){
                    Operand tmp = new_tmp();
                    insert(p, pre, getTriple(t_assign, tmp, exp->src2, NULL));
                    exp->src2 = tmp;
                }
                if (exp->type != t_assign && exp->dest && exp->dest->property == o_point){
                    Operand tmp = new_tmp();
                    insert(p, pre, getTriple(t_assign, tmp, exp->dest, NULL));
                    exp->dest = tmp;
                }
            }
        }
        for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
            for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
                TripleExp exp = q->val;
                //debugCode(exp);
                if (!((exp->type == t_star) || (exp->type == t_div))) continue;
                tripleNode pre = q->pre;
                while(pre->val->type == t_arg) pre = pre->pre;
                if (exp->src1 && exp->src1->type == o_const){
                    Operand tmp = new_tmp();
                    insert(p, pre, getTriple(t_assign, tmp, exp->src1, NULL));
                    exp->src1 = tmp;
                }
                if (exp->src2 && exp->src2->type == o_const){
                    Operand tmp = new_tmp();
                    insert(p, pre, getTriple(t_assign, tmp, exp->src2, NULL));
                    exp->src2 = tmp;
                }
            }
        }
    }
}
int isBranch(enum Ttype_  type){
    return (type == t_eq) || (type == t_geq) || (type == t_g) || (type == t_leq) || (type == t_l) || (type == t_goto) || (type == t_call) || (type == t_return);
}


void printBlock(list p){
        for(blockItem q = p->head; q; q = q->next){
            printf("========\nBLOCK %d\n", q->val->id);
            for(tripleNode m = q->val->head; m != q->val->tail; m = m->next){
                 TripleExp tri = m->val;
            char* op = malloc(10);
            if (!isOperandValid(tri->dest)) continue;
            if (!isOperandValid(tri->src1)) continue;
            if (!isOperandValid(tri->src2)) continue;
            switch (tri->type){
                case t_label:
                    printf("LABEL %s :", sprintOperand(tri->dest));
                    break;
                case t_func:
                    printf("FUNCTION %s :", sprintOperand(tri->dest));
                    break;
                case t_goto:
                    op = "GOTO";
                    goto label1;
                case t_return:
                    op = "RETURN";
                    goto label1;
                case t_dec:
                    op = "DEC";
                    goto label1;
                case t_arg:
                    op = "ARG";
                    goto label1;
                case t_param:
                    op = "PARAM";
                    goto label1;
                case t_read:
                    op = "READ";
                    goto label1;
                case t_write:
                    op = "WRITE";
                    goto label1;
                    label1:
                    printf("%s %s", op, sprintOperand(tri->dest));
                    break;
                case t_assign:
                    printf("%s := %s", sprintOperand(tri->dest), sprintOperand(tri->src1));
                    break;
                case t_add:
                    op = "+";
                    goto label2;
                case t_sub:
                    op = "-";
                    goto label2;
                case t_star:
                    op = "*";
                    goto label2;
                case t_div:
                    op = "/";
                    label2:
                    printf("%s := %s %s %s", sprintOperand(tri->dest), sprintOperand(tri->src1), op, sprintOperand(tri->src2));
                    break;
                case t_eq:
                    op = "==";
                    goto label3;
                case t_neq:
                    op = "!=";
                    goto label3;
                case t_geq:
                    op = ">=";
                    goto label3;
                case t_leq:
                    op = "<=";
                    goto label3;
                case t_g:
                    op = ">";
                    goto label3;
                case t_l:
                    op = "<";
                    label3:
                    printf("IF %s %s %s GOTO %s", sprintOperand(tri->src1), op, sprintOperand(tri->src2), sprintOperand(tri->dest));
                    break;
                case t_call:
                    printf("%s := CALL %s", sprintOperand(tri->dest), sprintOperand(tri->src1));
                    break;
                }
                printf("\n");
            }
        }
}

#define BEGIN(x) (x->head)
#define GET(x) (x->val)
char* getLabel(int x){
    char* ch = malloc(sizeof(char) * 300);
    int n = 0;
    ch[0] = 1;
    while(x){
        ch[++n] = (x % 10) + 48;
        x /= 10;
    }
    ch[n+1] = 0;
    return ch;
}

static int isVar(Operand o){
    return o && (o->type == o_var || o->type == o_tmpVar);
} 

static char* getVar(Operand o){
    if (o->type == o_var) return o->u.varPoint->name;
    if (o->type == o_tmpVar) return getLabel(o->u.tmpId);
}

map_int_t varTable, labelTable;
int blockNum, tripleNum, varNum, funcNum;
cfg CFG;

list genBlock(tripleNode q){
    tripleNode pre = NULL;
    list curBlockList;
    createList(&curBlockList);
    curBlockList->head = NULL;
    curBlockList->tail = NULL;
    blockItem curBlock = NULL;
    int s = 0;
        for(; q; q = q->next){
            //debugCode(q->val);
            if (pre == NULL || isBranch(pre->val->type) || q->val->type == t_label || ((q->val->type == t_arg) && (pre->val->type != t_arg))){
                if (curBlock){
                    curBlock->val->tail = q;
                    push_back(curBlockList, curBlock);
                }
                s++;
                curBlock = malloc(sizeof(blockItem_));
                curBlock->val = malloc(sizeof(blockInfo_));
                curBlock->val->head = q;
                curBlock->val->id = s;
            }
            pre = q;
        }
        if (curBlock){
            curBlock->val->tail = q;
            push_back(curBlockList, curBlock);
        }  
    return curBlockList;  
}


static void addVar(char* varName){
    if (!map_get(&varTable, varName)){
        map_set(&varTable, varName, 1);
        varNum++;
    }else{
        int num = *map_get(&varTable, varName);
        num++;
        map_remove(&varTable, varName);
        map_set(&varTable, varName, num);
    }
}

void countBlock(list p){
    for(blockItem q = p->head; q; q= q->next){
        blockNum++;
        for(tripleNode m = GET(q)->head;  m != GET(q)->tail; m = m->next){
            TripleExp exp = m->val;
            tripleNum++;
            if (exp->type == t_label){
                map_set(&labelTable, getLabel(exp->dest->u.labelId), q->val->id);
            }
            if (isVar(exp->dest)) addVar(getVar(exp->dest));
            if (isVar(exp->src1)) addVar(getVar(exp->src1));
            if (isVar(exp->src2)) addVar(getVar(exp->src2));
        }
    }
}

void buildEdge(list p){
        for(blockItem q = p->head; q; q= q->next){
                //printf("block %d\n", q->val->id);
                if (q->pre && ((tripleNode)(q->pre->val->tail->pre))->val->type != t_goto && ((tripleNode)(q->pre->val->tail->pre))->val->type != t_return){
                    //debugCode(q->pre->val->tail->pre->val);
                    addEdge(CFG, q->val->id, q->val->id - 1);
                }
                for(tripleNode m = GET(q)->head; m != GET(q)->tail; m = m->next){
                    if (isBranch(m->val->type) && m->val->type != t_call && m->val->type != t_return){
                        int from = *map_get(&labelTable, getLabel(m->val->dest->u.labelId)), to = q->val->id;
                        addEdge(CFG, from , to);
                    }
                    if (m->val->type == t_return){
                        addEdge(CFG, blockNum + 1, q->val->id);
                    }
                }
        }
}


int maxVar = 0;
int max(int a, int b){
    return a >= b ? a : b;
}

void buildCFG(tripleNode funcBlock){
    list c = genBlock(funcBlock);
    CFG = malloc(sizeof(cfg));
    map_init(&labelTable);
    map_init(&varTable);
    blockNum = 0;
    tripleNum = 0;
    varNum = 0;
    countBlock(c);
    initGraph(CFG, blockNum + funcNum, tripleNum * 2);
    maxVar = max(maxVar, blockNum + funcNum);
    printf("=======\n");
    printBlock(c);
    buildEdge(c);
    //printf("%d %d %d\n", blockNum, tripleNum, varNum);
    printf("\n");
    for(int i = 1; i <= blockNum + funcNum; i++){
        for(int p = CFG->head[i]; p; p = CFG->edgeList[p].next){
            printf("%d->%d\n", CFG->edgeList[p].to, i);
        }
    }
}


void testCFG(list funcBlock){
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        buildCFG(p->val->head);
    }
    printf("%d\n", maxVar);
}


