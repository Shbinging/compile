#ifndef __ir__
#define __ir__
#include "../sdt/sdt.h"
#include "../utils/list/list.h"
typedef struct Operand_{
    enum Otype_ {o_label, o_const, o_var, o_tmpVar, o_func} type;
    enum Oproperty_ {o_normal, o_address, o_point, o_size} property;
    union {
        int tmpId;
        int constInt;
        int labelId;
        funcItem funcPoint;
        varItem varPoint;
    }u;
    int size;
} Operand_;

typedef Operand_ * Operand;

typedef struct TripleExp_{
    enum Ttype_ {t_label, t_func, t_assign, t_goto, t_eq, t_neq, t_g, t_l, t_leq, t_geq, t_return ,t_dec, t_arg, t_call, t_param, t_read, t_write} type;
    Operand src1, src2, dest;
} TripleExp_;
typedef TripleExp_* TripleExp;

typedef listNode(TripleExp_, int) tripleNode_;

typedef listNode(listHead, funcItem_) funcNode_;

typedef tripleNode_* tripleNode;
typedef funcNode_* funcNode;
void printTripe(listHead* funcBlock);
listHead* Program0(TreeNode* rt);
static void Program1(TreeNode* rt);
static void ExtDefList0(TreeNode* rt);
static void ExtDefList1(TreeNode* rt);
static void ExtDefList2(TreeNode* rt);
static void ExtDef0(TreeNode* rt);
static void ExtDef1(TreeNode* rt);
static void ExtDef2(TreeNode* rt);
static void ExtDef3(TreeNode* rt);
static void ExtDecList0(TreeNode* rt);
static void ExtDecList1(TreeNode* rt);
static void ExtDecList2(TreeNode* rt);
static void Specifier0(TreeNode* rt);
static void Specifier1(TreeNode* rt);
static void Specifier2(TreeNode* rt);
static void StructSpecifier0(TreeNode* rt);
static void StructSpecifier1(TreeNode* rt);
static void StructSpecifier2(TreeNode* rt);
static void OptTag0(TreeNode* rt);
static void OptTag1(TreeNode* rt);
static void OptTag2(TreeNode* rt);
static void Tag0(TreeNode* rt);
static void Tag1(TreeNode* rt);
static void VarDec0(TreeNode* rt);
static void VarDec1(TreeNode* rt);
static void VarDec2(TreeNode* rt);
static char* FunDec0(TreeNode* rt);
static char* FunDec1(TreeNode* rt);
static char* FunDec2(TreeNode* rt);
static void VarList0(TreeNode* rt);
static void VarList1(TreeNode* rt);
static void VarList2(TreeNode* rt);
static void ParamDec0(TreeNode* rt);
static void ParamDec1(TreeNode* rt);
static void ParamDec2(TreeNode* rt);
static void Compst0(TreeNode* rt);
static void Compst1(TreeNode* rt);
static void StmtList0(TreeNode* rt);
static void StmtList1(TreeNode* rt);
static void StmtList2(TreeNode* rt);
static void Stmt0(TreeNode* rt);
static void Stmt1(TreeNode* rt);
static void Stmt2(TreeNode* rt);
static void Stmt3(TreeNode* rt);
static void Stmt4(TreeNode* rt);
static void Stmt5(TreeNode* rt);
static void Stmt6(TreeNode* rt);
static void DefList0(TreeNode* rt);
static void DefList1(TreeNode* rt);
static void DefList2(TreeNode* rt);
static void Def0(TreeNode* rt);
static void Def1(TreeNode* rt);
static void DecList0(TreeNode* rt);
static void DecList1(TreeNode* rt);
static void DecList2(TreeNode* rt);
static void Dec0(TreeNode* rt);
static void Dec1(TreeNode* rt);
static void Dec2(TreeNode* rt);
static void Exp0(TreeNode* rt);
static void Exp1(TreeNode* rt);
static void Exp2(TreeNode* rt);
static void Exp3(TreeNode* rt);
static void Exp4(TreeNode* rt);
static void Exp5(TreeNode* rt);
static void Exp6(TreeNode* rt);
static void Exp7(TreeNode* rt);
static void Exp8(TreeNode* rt);
static void Exp9(TreeNode* rt);
static void Exp10(TreeNode* rt);
static void Exp11(TreeNode* rt);
static void Exp12(TreeNode* rt);
static void Exp13(TreeNode* rt);
static void Exp14(TreeNode* rt);
static void Exp15(TreeNode* rt);
static void Exp16(TreeNode* rt);
static void Exp17(TreeNode* rt);
static void Exp18(TreeNode* rt);
static void Args0(TreeNode* rt);
static void Args1(TreeNode* rt);
static void Args2(TreeNode* rt);
#endif