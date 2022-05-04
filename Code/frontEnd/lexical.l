%option yylineno
%{
#include <string.h>
#include <stdlib.h>
#include "syntax.tab.h"
#include "../utils/syntaxTree/treeNode.h"

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

extern int getNum(char ch);
extern void errorHandle();
%}

letter [a-zA-Z]
num [0-9]
%%
({num}+|0[xX][0-9A-Fa-f]+) {make_node(yylval.node_type, makeType(INT), "INT")
    if (strlen(yytext) > 0 && yytext[0] == '0'){
        int ans = 0;
        if (yytext[1] == 'x' || yytext[1] == 'X'){//16
            int n = strlen(yytext);
            for(int i = 2; i < n; i++){
                ans = ans * 16 + getNum(yytext[i]);
            }
        }else{//8
            int n = strlen(yytext);
            for(int i = 1; i < n; i++){
                if (getNum(yytext[i]) > 7){
                    errorHandle();
                    break;
                }else{
                    ans = ans * 8 + getNum(yytext[i]);
                }
            }
        }
        yylval.node_type->info.val_int = ans;
        return INT;
    }else{
        //10
        yylval.node_type->info.val_int = atoi(yytext);
        return INT;
    }
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
>|<|>=|<=|==|!= {make_node(yylval.node_type, makeType(KEY), "RELOP") 
    int len = strlen(yytext);
    yylval.node_type->opName = malloc(len + 1);
    strcpy(yylval.node_type->opName, yytext);
    return RELOP;
}
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
. {errorHandle();}

\/\/ {
    char ch = input();
    while(ch != '\n') ch = input();
}
\/\* {
    char pre = 0;
    while(1){
        char cur = input();
        if (pre == '/' && cur == '*'){
            
        }
        if (pre == '*' && cur == '/') break;
        pre = cur;
        if (cur == -1) break;
    }
}
%%
void errorHandle(){
    parseOK = 0; 
    printf("Error type A at Line %d: Mysterious character \"%s\".\n", yylineno, yytext);
}

int getNum(char ch){
    if ('a' <= ch && ch <= 'z') return ch - 'a' + 10;
    if ('A' <= ch && ch <= 'Z') return ch - 'A' + 10;
    if ('0' <= ch && ch <= '9') return ch - '0';
}