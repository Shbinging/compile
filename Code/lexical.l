%option yylineno
%{
#include <string.h>
#include <stdlib.h>
#include "syntax.tab.h"
#include "treeNode.h"

#define make_node(res, _type, _name) res = malloc(sizeof(TreeNode)); \
    res->son = NULL; \
    res->bro = NULL; \
    res->type = _type; \
    res->name = _name; \

#define OUT(type, name) make_node(yylval.node_type, makeType(type), #name)\
    return name;



int yycolumn = 1;
#define YY_USER_ACTION \
    yylloc.first_line = yylloc.last_line = yylineno; \
    yylloc.first_column = yycolumn; \
    yylloc.last_column = yycolumn + yyleng - 1; \
    yycolumn += yyleng;
%}

letter [a-zA-Z]
num [0-9]
%%
({num}+|0[xX][0-9A-Fa-f]+) {make_node(yylval.node_type, makeType(INT), "INT")
    yylval.node_type->info.val_int = atoi(yytext);
    return INT;
} //INT
({num}*\.{num}+|{num}+\.)([Ee][+-]?{num}+)? {make_node(yylval.node_type, makeType(FLOAT), "FLOAT")
    yylval.node_type->info.val_float = atof(yytext);
    return FLOAT;
}//float


int|float {make_node(yylval.node_type, makeType(TYPE), "TYPE")
    if (strcmp(yytext, "int") == 0){
        yylval.node_type->info.type = "int";
    }else{
        yylval.node_type->info.type = "float";
    }
    return TYPE;
}

struct {OUT(KEY, STRUCT)}
return {OUT(KEY, RETURN)}
if {OUT(KEY, IF)}
else {OUT(KEY, ELSE)}
while {OUT(KEY, WHILE)}
(_|{letter})(_|{letter}|{num})* {make_node(yylval.node_type, makeType(ID), "ID")
    int len = strlen(yytext);
    yylval.node_type->info.varName = malloc(len + 1);
    strcpy(yylval.node_type->info.varName, yytext);
    return ID;
}

; {OUT(KEY, SEMI)}
, {OUT(KEY, COMMA)}
= {OUT(KEY, ASSIGNOP)}
>|<|>=|<=|==|!= {OUT(KEY, RELOP)}
\+ {OUT(KEY, PLUS)}
- {OUT(KEY, MINUS)}
\* {OUT(KEY, STAR)}
\/ {OUT(KEY, DIV)}
&& {OUT(KEY, AND)}
\|\| {OUT(KEY, OR)}
\. {OUT(KEY, DOT)}
\! {OUT(KEY, NOT)}
\( {OUT(KEY, LP)}
\) {OUT(KEY, RP)}
\[ {OUT(KEY, LB)}
\] {OUT(KEY, RB)}
\{ {OUT(KEY, LC)}
\} {OUT(KEY, RC)}
\n {yycolumn = 1;}
[\t\r ] {}
. {printf("type A wrong! %s\n", yytext);}
%%
