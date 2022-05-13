#include "irOptimization.h"


int isBreakPoint(TripleExp m){
    switch (m->type)
    {
    case t_call:
    case t_eq:
    case t_g:
    case t_geq:
    case t_goto:
    case t_l:
    case t_leq:
    case t_neq:
    case t_return:
        return 1;
    default:
        return 0;
    }
}

int equalOperand(Operand a, Operand b){
    if (!a || !b) return 0;
    if (a->type != b->type) return 0;
    if (a->property != b->property) return 0;
    switch(a->type){
        //XXX::只考虑tmpVar
        case o_tmpVar:
            return a->u.tmpId == b->u.tmpId;
        case o_var:
           return a->u.varPoint == b->u.varPoint;
        default:
            return 0;
    }
}

int isCalc(TripleExp exp){
    switch(exp->type){
        case t_add:
        case t_sub:
        case t_div:
        case t_star:
            return 1;
        default:
            return 0;
    }
}
int opCalc(TripleExp exp){
    int a = exp->src1->u.constInt;
    int b = exp->src2->u.constInt;
    switch (exp->type)
    {
        case t_add:
            return a + b;
        case t_sub:
            return a - b;
        case t_star:
            return a * b;
        case t_div:
            return a / b;
        default:
            return 0;
    }
}
void constLiminate(list funcBlock){
    if (funcBlock == NULL) return;
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
            q->property = 1;
        }
    }
    //printTripe(funcBlock);
    //return;
    while(1){
        int isModify = 0;
        //printf("NEW ROUND!\n");
        for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
            for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
                TripleExp tri = q->val;
                if (!q->property) continue;
                if (tri->type == t_assign && tri->src1 && tri->src1->type == o_const && tri->src2 == NULL){
                    int needDel = 0;
                    for(tripleNode m = q->next; m; m = m ->next){
                        TripleExp tri1 = m->val;
                        if (equalOperand(tri->dest, tri1->src1)){
                            // printf("from:\n");
                            // debugCode(tri1);
                            //printf("\n");
                            needDel = 1;
                            isModify = 1;
                            tri1->src1 = op_Imm(tri->src1->u.constInt);
                            // printf("to:\n");
                            // debugCode(tri1);
                            //printf("\n");
                        }
                        if (equalOperand(tri->dest, tri1->src2)){
                            // printf("from:\n");
                            // debugCode(tri1);
                            //printf("\n");
                            needDel = 1;
                            isModify = 1;
                            tri1->src2 = op_Imm(tri->src1->u.constInt);
                            // printf("to:\n");
                            // debugCode(tri1);
                            //printf("\n");
                        }
                        if (equalOperand(tri->dest, tri1->dest)){
                            break;
                        }
                        if (isBreakPoint(tri1)) break;
                    }
                    if (needDel && tri->dest->type == o_tmpVar){
                        q->property = 0;
                    }
                    if (isModify) break;
                }
                if (isCalc(tri) && tri->src1->type == o_const && tri->src2->type == o_const){
                    isModify = 1;
                    // printf("from:\n");
                    // debugCode(tri);
                    int ans = opCalc(tri);
                    tri->src2 = NULL;
                    tri->src1 = op_Imm(ans);
                    //tri->src1->u.constInt = ans;
                    tri->type = t_assign;
                    // printf("to:\n");
                    // debugCode(tri);
                    break;
                }
            }
        }
        if (!isModify) break;
    }
}

int isOpUse(list funcBlock, Operand op){
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
                if (!q->property) continue;
                TripleExp tri = q->val;
                if (tri->src1 && equalOperand(op, tri->src1)) return 1;
                if (tri->src2 && equalOperand(op, tri->src2)) return 1;
            }
    }
    return 0;
}
void deadVarLiminate(list funcBlock){
    while(1){
        int isModify = 0;
        for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
            for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
                if (!q->property) continue;
                TripleExp tri = q->val;
                if (tri->type == t_assign && tri->dest->type == o_tmpVar){
                    if (!isOpUse(funcBlock, tri->dest)){
                        q->property = 0;
                        isModify = 1;
                        break;
                    }
                }
            }
            if(isModify) break;
        }
        if (!isModify) break;
    }
}