#include"objUtil.h"
#include "graph.h"
#include <stdio.h>
int isBranch(enum Ttype_  type){
    return (type == t_eq) || (type == t_geq) || (type == t_g) || (type == t_leq) || (type == t_l) || (type == t_goto);
}

list genBlock(list funcBlock){
    int s = 0;
    if (funcBlock == NULL) return NULL;
    list blockList = malloc(sizeof(listHead));
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        tripleNode pre = NULL;
        listItem b = malloc(sizeof(listItem_));
        list curBlockList = malloc(sizeof(listHead));
        blockItem curBlock = NULL;
        tripleNode q;
        for(q = (tripleNode) p->val->head; q; q = q->next){
            if (pre == NULL || isBranch(pre->val->type) || q->val->type == t_label){
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
        b->val = curBlockList;
        push_back(blockList, b);
    }
    return blockList;
}

void printBlock(list funcBlock){
    for(listItem p = ((list)(funcBlock))->head; p; p = p->next){
        for(blockItem q = p->val->head; q; q = q->next){
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

void countBlock(list funcBlock){
        for(listItem p = BEGIN(funcBlock); p; p = p->next){
            funcNum++;
            for(blockItem q = BEGIN(GET(p)); q; q= q->next){
                blockNum++;
                for(tripleNode m = GET(q)->head; m != GET(q)->tail; m = m->next){
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
}

void buildEdge(list funcBlock){
    int s = 0;
    for(listItem p = BEGIN(funcBlock); p; p = p->next){
        s++;
        for(blockItem q = BEGIN(GET(p)); q; q= q->next){
                //printf("block %d\n", q->val->id);
                if (q->pre && ((tripleNode)(q->pre->val->tail->pre))->val->type != t_goto){
                    //debugCode(q->pre->val->tail->pre->val);
                    addEdge(CFG, q->val->id, q->val->id - 1);
                }
                for(tripleNode m = GET(q)->head; m != GET(q)->tail; m = m->next){
                    if (isBranch(m->val->type)){
                        int from = *map_get(&labelTable, getLabel(m->val->dest->u.labelId)), to = q->val->id;
                        addEdge(CFG, from , to);
                    }
                    if (m->val->type == t_return){
                        addEdge(CFG, blockNum + s, q->val->id);
                    }
                }
        }
    }
}

void buildCFG(list funcBlock){
    CFG = malloc(sizeof(cfg));
    map_init(&labelTable);
    map_init(&varTable);
    blockNum = 0;
    tripleNum = 0;
    varNum = 0;
    countBlock(funcBlock);
    initGraph(CFG, blockNum + funcNum, tripleNum * 2);
    buildEdge(funcBlock);
    printf("%d %d %d\n", blockNum, tripleNum, varNum);
    // for(int i = 1; i <= blockNum + funcNum; i++){
    //     for(int p = CFG->head[i]; p; p = CFG->edgeList[p].next){
    //         printf("%d->%d\n", CFG->edgeList[p].to, i);
    //     }
    // }
}

