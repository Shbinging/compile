#ifndef __ir__
#define __ir__
#include "irUtils.h"

typedef listHead* list;
void printTripe(listHead* funcBlock);
#define gen_Program(x) listHead* Program##x(TreeNode* rt)
#define gen_ExtDefList(x) void ExtDefList##x(TreeNode* rt)
#define gen_ExtDef(x) void ExtDef##x(TreeNode* rt)
#define gen_ExtDecList(x) void ExtDecList##x(TreeNode* rt)
#define gen_Specifier(x) void Specifier##x(TreeNode* rt)
#define gen_StructSpecifier(x) void StructSpecifier##x(TreeNode* rt)
#define gen_OptTag(x) void OptTag##x(TreeNode* rt)
#define gen_Tag(x) void Tag##x(TreeNode* rt)
#define gen_VarDec(x) char* VarDec##x(TreeNode* rt, int isLocalDef, list code)
#define gen_FunDec(x) char* FunDec##x(TreeNode* rt)
#define gen_VarList(x) void VarList##x(TreeNode* rt)
#define gen_ParamDec(x) void ParamDec##x(TreeNode* rt)
#define gen_Compst(x) list Compst##x(TreeNode* rt)
#define gen_StmtList(x) list  StmtList##x(TreeNode* rt)
#define gen_Stmt(x) list Stmt##x(TreeNode* rt)
#define gen_DefList(x) list DefList##x(TreeNode* rt)
#define gen_Def(x) list Def##x(TreeNode* rt)
#define gen_DecList(x) list DecList##x(TreeNode* rt)
#define gen_Dec(x) list Dec##x(TreeNode* rt)
#define gen_Exp(x) listHead* Exp##x(TreeNode* rt, Operand place)
#define gen_Args(x) list Args##x(TreeNode* rt, listHead* paraList)
#define gen_ExpCond(x) listHead* ExpCond##x(TreeNode* rt, Operand labelTrue, Operand labelFalse)
#define gen_leftVal(x) Type leftVal##x(TreeNode* rt, Operand place, listHead* code, varItem* array)
#define gen_localVal listHead* localVal(TreeNode* rt, Operand place)

#define call_Program(x) Program##x(rt)
#define call_ExtDefList(x) ExtDefList##x(rt)
#define call_ExtDef(x) ExtDef##x(rt)
#define call_ExtDecList(x) ExtDecList##x(rt)
#define call_Specifier(x) Specifier##x(rt)
#define call_StructSpecifier(x) StructSpecifier##x(rt)
#define call_OptTag(x) OptTag##x(rt)
#define call_Tag(x) Tag##x(rt)
#define call_VarDec(x) return VarDec##x(rt, isLocalDef, code)
#define call_FunDec(x) return FunDec##x(rt)
#define call_VarList(x) VarList##x(rt)
#define call_ParamDec(x) ParamDec##x(rt)
#define call_Compst(x) return Compst##x(rt)
#define call_StmtList(x) return StmtList##x(rt)
#define call_Stmt(x) return Stmt##x(rt)
#define call_DefList(x) return DefList##x(rt)
#define call_Def(x) return Def##x(rt)
#define call_DecList(x) return DecList##x(rt)
#define call_Dec(x) return Dec##x(rt)
#define call_Exp(x) return Exp##x(rt, place)
#define call_Args(x) return Args##x(rt, paraList)
#define call_ExpCond(x) return ExpCond##x(rt, labelTrue, labelFalse)
#define call_leftVal(x) return leftVal##x(rt, place, code, array)

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
static gen_Exp(19);
static gen_Args(0);
static gen_Args(1);
static gen_Args(2);
static gen_ExpCond(0);
static gen_ExpCond(1);
static gen_ExpCond(2);
static gen_ExpCond(3);
static gen_ExpCond(4);
static gen_ExpCond(5);
static gen_localVal;
static Type ExpAddress(TreeNode* rt, int baseTmp, int offsetTmp, int isInterface, list code);
static Type ExpArray0(TreeNode* rt, int baseTmp, int offsetTmp, list code);
static Type ExpArray1(TreeNode* rt, int baseTmp, int offsetTmp, list code);
static Type ExpStruct(TreeNode* rt, int baseTmp, int offsetTmp, list code);
static Type ExpAddressID(TreeNode* rt, int baseTmp, int offsetTmp, list code);
static list genExpAddress(TreeNode* rt, int valTmp);

#endif