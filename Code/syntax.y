%locations
%{
#include <stdio.h>
int s = 0;

#include "lex.yy.c"
#define YYERROR_VERBOSE 1

#define makeType(type) node##type
#include <stdarg.h>
#include <string.h>
enum nodeType{
    makeType(YFNULL),
    makeType(YFFULL),
    makeType(ID),
    makeType(TYPE),
    makeType(INT),
    makeType(FLOAT)
};
struct TreeNode{
    enum nodeType type;
    char* name;
    void* extraInfo;
    struct TreeNode* son;
    struct TreeNode* bro;
};

extern struct TreeNode* make_tree(enum nodeType type, char* name, int lineNo, int num, ...);
%}
%union{
    struct  TreeNode *node_type;
}
/* declared tokens */
%token<node_type> INT ID FLOAT
%token<node_type> TYPE STRUCT IF ELSE RETURN WHILE RELOP
%token<node_type> PLUS MINUS STAR DIV ASSIGNOP AND OR NOT
%token<node_type> SEMI COMMA LP RP LB RB LC RC DOT
%token<node_type> ERR OTHER
%type <node_type> Program ExtDefList ExtDef Specifier ExtDecList FunDec CompSt
%type <node_type> VarDec StructSpecifier OptTag Tag DefList Def VarList ParamDec StmtList
%type <node_type> Stmt Exp DecList Dec  Args
%right ASSIGNOP
%left OR
%left AND
%left RELOP
%left PLUS MINUS
%left DIV STAR
%right NOT
%left DOT
%left  LB RB
%left LP RP
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%
Program: ExtDefList {$$ = make_tree(makeType(YFFULL), "Program",  @$.first_line, 1, $1);}
;

ExtDefList: ExtDef ExtDefList {$$ = make_tree(makeType(YFFULL), "ExtDefList",  @$.first_line, 2, $1, $2);}
| {$$ = make_tree(makeType(YFNULL), "ExtDefList",  @$.first_line, 0);}
;

ExtDef : Specifier ExtDecList SEMI  {$$ = make_tree(makeType(YFFULL), "ExtDef",  @$.first_line, 3, $1, $2, $3);}
| Specifier SEMI {$$ = make_tree(makeType(YFFULL), "ExtDef",  @$.first_line, 2, $1, $2);}
| Specifier FunDec CompSt {$$ = make_tree(makeType(YFFULL), "ExtDef",  @$.first_line, 3, $1, $2, $3);}
| error SEMI
| Specifier error SEMI
;

ExtDecList: VarDec {$$ = make_tree(makeType(YFFULL), "ExtDecList",  @$.first_line, 1, $1);}
| VarDec COMMA ExtDecList {{$$ = make_tree(makeType(YFFULL), "ExtDecList",  @$.first_line, 3, $1, $2, $3);}}
;

Specifier: TYPE {$$ = make_tree(makeType(YFFULL), "Specifiert",  @$.first_line, 1, $1);}
|StructSpecifier{$$ = make_tree(makeType(YFFULL), "Specifier",  @$.first_line, 1, $1);}
;

StructSpecifier: STRUCT OptTag LC DefList RC {$$ = make_tree(makeType(YFFULL), "StructSpecifier",  @$.first_line, 5, $1, $2, $3, $4, $5);}
| STRUCT Tag {$$ = make_tree(makeType(YFFULL), "StructSpecifier",  @$.first_line, 2, $1, $2);}
|  STRUCT OptTag LC error RC 
;

OptTag: ID {$$ = make_tree(makeType(YFFULL), "OptTag",  @$.first_line, 1, $1);}
| {$$ = make_tree(makeType(YFNULL), "OptTag",  @$.first_line, 0);}
;

Tag: ID {$$ = make_tree(makeType(YFFULL), "Tag",  @$.first_line, 1, $1);}
; 

VarDec: ID {$$ = make_tree(makeType(YFFULL), "VarDec",  @$.first_line, 1, $1);}
| VarDec LB INT RB {$$ = make_tree(makeType(YFFULL), "VarDec",  @$.first_line, 4, $1, $2, $3, $4);}
| error RB 
;

FunDec: ID LP VarList RP {$$ = make_tree(makeType(YFFULL), "FunDec",  @$.first_line, 4, $1, $2, $3, $4);}
| ID LP RP {$$ = make_tree(makeType(YFFULL), "FunDec",  @$.first_line, 3, $1, $2, $3);}
| error RP
;

VarList: ParamDec COMMA VarList {$$ = make_tree(makeType(YFFULL), "VarList",  @$.first_line, 3, $1, $2, $3);}
| ParamDec {$$ = make_tree(makeType(YFFULL), "VarList",  @$.first_line, 1, $1);}
;

ParamDec: Specifier VarDec {$$ = make_tree(makeType(YFFULL), "ParamDec",  @$.first_line, 2, $1, $2);}
;

CompSt: LC DefList StmtList RC {$$ = make_tree(makeType(YFFULL), "CompSt",  @$.first_line, 4, $1, $2, $3, $4);}
|error RC
| LC error
;

StmtList: Stmt StmtList {$$ = make_tree(makeType(YFFULL), "StmtList",  @$.first_line, 2, $1, $2);}
|
;

Stmt: Exp SEMI {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 2, $1, $2);}
| CompSt {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 1, $1);}
| RETURN Exp SEMI {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 3, $1, $2, $3);}
| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 5, $1, $2, $3, $4, $5);}
| IF LP Exp RP Stmt ELSE Stmt {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 7, $1, $2, $3, $4, $5, $6, $7);}
| WHILE LP Exp RP Stmt {$$ = make_tree(makeType(YFFULL), "Stmt",  @$.first_line, 5, $1, $2, $3, $4, $5);}
| error SEMI

;

DefList: Def DefList {$$ = make_tree(makeType(YFFULL), "DefList",  @$.first_line, 2, $1, $2);}
|
;

Def: Specifier DecList SEMI {$$ = make_tree(makeType(YFFULL), "Def",  @$.first_line, 3, $1, $2, $3);}
|Specifier error SEMI
|error SEMI
;

DecList: Dec {$$ = make_tree(makeType(YFFULL), "DecList",  @$.first_line, 1, $1);}
| Dec COMMA DecList {$$ = make_tree(makeType(YFFULL), "DecList",  @$.first_line, 3, $1, $2, $3);}
;

Dec: VarDec {$$ = make_tree(makeType(YFFULL), "Dec",  @$.first_line, 1, $1);}
| VarDec ASSIGNOP Exp {$$ = make_tree(makeType(YFFULL), "Dec",  @$.first_line, 3, $1, $2, $3);}
| VarDec ASSIGNOP error
;

Exp: Exp ASSIGNOP Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp AND Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp OR Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp RELOP Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp PLUS Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp MINUS Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp STAR Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp DIV Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| LP Exp RP {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| MINUS Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 2, $1, $2);}
| NOT Exp {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 2, $1, $2);}
| ID LP Args RP {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 4, $1, $2, $3, $4);}
| ID LP RP {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| Exp LB Exp RB {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 4, $1, $2, $3, $4);}
| Exp DOT ID {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 3, $1, $2, $3);}
| ID {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 1, $1);}
| INT {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 1, $1);}
| FLOAT {$$ = make_tree(makeType(YFFULL), "Exp",  @$.first_line, 1, $1);}
;

Args: Exp COMMA  Args {$$ = make_tree(makeType(YFFULL), "Args",  @$.first_line, 3, $1, $2, $3);}
| Exp {$$ = make_tree(makeType(YFFULL), "Args",  @$.first_line, 1, $1);}
;

%%
yyerror(char* msg) {
    fprintf(stderr, "error: %s line:%d\n", msg, yylineno);
}


struct TreeNode* make_tree(enum nodeType type, char* name, int lineNo, int num, ...){
    va_list valist;
    va_start(valist, num);
    struct TreeNode* rt = malloc(sizeof(struct TreeNode));
    rt->son = NULL;
    rt->bro = NULL;
    rt->type = type;
    rt->name = name;
    rt->extraInfo = malloc(sizeof(int));
    memcpy(rt->extraInfo, &lineNo, sizeof(int));
    struct TreeNode* p, *q = NULL;
    for(int i = 1; i <= num; i++){
        p = va_arg(valist, struct TreeNode*);
        if (q) q->bro = p;
        else rt->son = p;
        q = p;
    }
    return rt;
}

#define make_node(res, _type, _name, _extraType, _extraInfo) res = malloc(sizeof(struct TreeNode)); \
    res->son = NULL; \
    res->bro = NULL; \
    res->type = _type; \
    res->name = _name; \
    getExtraInfo_##_extraType(res->extraInfo, _extraInfo) 
#define getExtraInfo_int(res, val)   res = malloc(sizeof(int));\
    *res = val;
#define getExtraInfo_float(res, val)   res = malloc(sizeof(float));\
    *res = val;
#define getExtraInfo_char(res, val)      int len = strlen(val); \
    res = malloc(len + 1); \
    strcpy(res, val); \

