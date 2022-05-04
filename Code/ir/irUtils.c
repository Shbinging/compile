#include "irUtils.h"

int isOperandValid(Operand op){
    return (op == NULL) || !(op->type == o_tmpVar && op->u.tmpId < 0);
}
char* sprintOperand(Operand op){
    char* st = malloc(100);
    char* varname = malloc(100);
    switch (op->type)
    {
        case o_var:
            sprintf(varname, "%s", op->u.varPoint->name);
            goto label4;
        case o_tmpVar:
            sprintf(varname, "tmp%d", op->u.tmpId);
            label4:
            switch(op->property){
                case o_normal:
                    sprintf(st, "%s", varname);
                    break;
                case o_address:
                    sprintf(st, "&%s", varname);
                    break;
                case o_point:
                    sprintf(st, "*%s", varname);
                    break;
                case o_size:
                    sprintf(st, "%s %d", varname, op->addtion.size);
                    break;
            }
            break;
        case o_func:
            sprintf(st, "%s", op->u.funcPoint->name);
            break;
        case o_label:
            sprintf(st, "label%d", op->u.labelId);
            break;
        case o_const:
            sprintf(st, "#%d", op->u.constInt);
            break;
    }
    return st;
}

void printTripe(listHead* funcBlock){
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        for(tripleNode q = (tripleNode)p->val->head; q; q = q->next){
            TripleExp tri = q->val;
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

void printCode(listHead* code){
        for(tripleNode q = (tripleNode)code->head; q; q = q->next){
            TripleExp tri = q->val;
            char* op = malloc(10);
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