#ifndef __ir__
#define __ir__
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
        int offsize;
    }addtion

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

#define gen_Program(x) listHead* Program##x(TreeNode* rt)
#define gen_ExtDefList(x) void ExtDefList##x(TreeNode* rt)
#define gen_ExtDef(x) void ExtDef##x(TreeNode* rt)
#define gen_ExtDecList(x) void ExtDecList##x(TreeNode* rt)
#define gen_Specifier(x) void Specifier##x(TreeNode* rt)
#define gen_StructSpecifier(x) void StructSpecifier##x(TreeNode* rt)
#define gen_OptTag(x) void OptTag##x(TreeNode* rt)
#define gen_Tag(x) void Tag##x(TreeNode* rt)
#define gen_VarDec(x) char* VarDec##x(TreeNode* rt)
#define gen_FunDec(x) char* FunDec##x(TreeNode* rt)
#define gen_VarList(x) void VarList##x(TreeNode* rt)
#define gen_ParamDec(x) void ParamDec##x(TreeNode* rt)
#define gen_Compst(x) void Compst##x(TreeNode* rt)
#define gen_StmtList(x) void StmtList##x(TreeNode* rt)
#define gen_Stmt(x) void Stmt##x(TreeNode* rt)
#define gen_DefList(x) void DefList##x(TreeNode* rt)
#define gen_Def(x) void Def##x(TreeNode* rt)
#define gen_DecList(x) void DecList##x(TreeNode* rt)
#define gen_Dec(x) void Dec##x(TreeNode* rt)
#define gen_Exp(x) listHead* Exp##x(TreeNode* rt, int place)
#define gen_Args(x) void Args##x(TreeNode* rt)

#define call_Program(x) return Program##x(rt)
#define call_ExtDefList(x) ExtDefList##x(rt)
#define call_ExtDef(x) ExtDef##x(rt)
#define call_ExtDecList(x) ExtDecList##x(rt)
#define call_Specifier(x) Specifier##x(rt)
#define call_StructSpecifier(x) StructSpecifier##x(rt)
#define call_OptTag(x) OptTag##x(rt)
#define call_Tag(x) Tag##x(rt)
#define call_VarDec(x) return VarDec##x(rt)
#define call_FunDec(x) return FunDec##x(rt)
#define call_VarList(x) VarList##x(rt)
#define call_ParamDec(x) ParamDec##x(rt)
#define call_Compst(x) Compst##x(rt)
#define call_StmtList(x) StmtList##x(rt)
#define call_Stmt(x) Stmt##x(rt)
#define call_DefList(x) DefList##x(rt)
#define call_Def(x) Def##x(rt)
#define call_DecList(x) DecList##x(rt)
#define call_Dec(x) Dec##x(rt)
#define call_Exp(x) return Exp##x(rt, place)
#define call_Args(x) Args##x(rt)

gen_Program(0);
static gen_Program(1);
static gen_ExtDefList(0);
static gen_ExtDefList(1);
static gen_ExtDefList(2);
static gen_ExtDef(0);
static gen_ExtDef(1);
static gen_ExtDef(2);
static gen_ExtDef(3);
static gen_ExtDecList(0);
static gen_ExtDecList(1);
static gen_ExtDecList(2);
static gen_Specifier(0);
static gen_Specifier(1);
static gen_Specifier(2);
static gen_StructSpecifier(0);
static gen_StructSpecifier(1);
static gen_StructSpecifier(2);
static gen_OptTag(0);
static gen_OptTag(1);
static gen_OptTag(2);
static gen_Tag(0);
static gen_Tag(1);
static gen_VarDec(0);
static gen_VarDec(1);
static gen_VarDec(2);
static gen_FunDec(0);
static gen_FunDec(1);
static gen_FunDec(2);
static gen_VarList(0);
static gen_VarList(1);
static gen_VarList(2);
static gen_ParamDec(0);
static gen_ParamDec(1);
static gen_ParamDec(2);
static gen_Compst(0);
static gen_Compst(1);
static gen_StmtList(0);
static gen_StmtList(1);
static gen_StmtList(2);
static gen_Stmt(0);
static gen_Stmt(1);
static gen_Stmt(2);
static gen_Stmt(3);
static gen_Stmt(4);
static gen_Stmt(5);
static gen_Stmt(6);
static gen_DefList(0);
static gen_DefList(1);
static gen_DefList(2);
static gen_Def(0);
static gen_Def(1);
static gen_DecList(0);
static gen_DecList(1);
static gen_DecList(2);
static gen_Dec(0);
static gen_Dec(1);
static gen_Dec(2);
static gen_Exp(0);
static gen_Exp(1);
static gen_Exp(2);
static gen_Exp(3);
static gen_Exp(4);
static gen_Exp(5);
static gen_Exp(6);
static gen_Exp(7);
static gen_Exp(8);
static gen_Exp(9);
static gen_Exp(10);
static gen_Exp(11);
static gen_Exp(12);
static gen_Exp(13);
static gen_Exp(14);
static gen_Exp(15);
static gen_Exp(16);
static gen_Exp(17);
static gen_Exp(18);
static gen_Args(0);
static gen_Args(1);
static gen_Args(2);
#endif