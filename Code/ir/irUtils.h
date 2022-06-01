#ifndef _irutil_
#define _irutil_
#include "../sdt/sdt.h"
#include "../utils/list/list.h"
typedef struct Operand_{
    enum Otype_ {o_label, o_const, o_var, o_tmpVar, o_func} type;
    enum Oproperty_ {o_normal, o_address, o_point, o_size, o_offset} property;
    union {
        int tmpId;
        int constInt;
        int labelId;
        funcItem funcPoint;
        varItem varPoint;
    }u;
    union{
        int size;
        struct offsetInfo_{
            Type type;
            int offset;
        } arrayInfo;
    }addtion;
} Operand_;

typedef Operand_ * Operand;

typedef struct TripleExp_{
    enum Ttype_ {t_label, t_func, t_assign, t_add, t_sub, t_star, t_div, t_goto, t_eq, t_neq, t_g, t_l, t_leq, t_geq, t_return ,t_dec, t_arg, t_call, t_param, t_read, t_write} type;
    Operand src1, src2, dest;
} TripleExp_;
typedef TripleExp_* TripleExp;

typedef listNode(TripleExp_, int, tripleNode_) tripleNode_;
typedef listNode(listHead, funcItem_, funcNode_) funcNode_;
typedef listNode(Operand_, int, OperandNode_) OperandNode_; 
typedef tripleNode_* tripleNode;
typedef funcNode_* funcNode;
typedef OperandNode_* OperandNode;
typedef unsigned int tmpId; 
typedef unsigned int labelId;

extern listHead* funcBlock;
extern listHead* tripleList;
extern tmpId tmpSum;
extern labelId labelSum;

char* sprintOperand(Operand op);
void printTripe(listHead* funcBlock);
void printCode(listHead*);
void debugCode(TripleExp tri);
char* sprintOperand(Operand op);
int isOperandValid(Operand op);
#endif