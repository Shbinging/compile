%option yylineno
%{
//#define OUT(type) printf(#type":%s len:%d\n", yytext, (int)strlen(yytext));
//#define OUT(type) printf(#type":%s len:%d\n", yytext, (int)strlen(yytext));
#define OUT(type) return type;
#include <string.h>
#include "syntax.tab.h"

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
({num}+|0[xX][0-9A-Fa-f]+) {OUT(INT)} //INT
({num}*\.{num}+|{num}+\.)([Ee][+-]?{num}+)? {OUT(FLOAT)}//float
int|float {OUT(TYPE)}
struct {OUT(STRUCT)}
return {OUT(RETURN)}
if {OUT(IF)}
else {OUT(ELSE)}
while {OUT(WHILE)}
(_|{letter})(_|{letter}|{num})* {OUT(ID)}
; {OUT(SEMI)}
, {OUT(COMMA)}
= {OUT(ASSIGNOP)}
>|<|>=|<=|==|!= {OUT(RELOP)}
\+ {OUT(PLUS)}
- {OUT(MINUS)}
\* {OUT(STAR)}
\/ {OUT(DIV)}
&& {OUT(AND)}
\|\| {OUT(OR)}
\. {OUT(DOT)}
\! {OUT(NOT)}
\( {OUT(LP)}
\) {OUT(RP)}
\[ {OUT(LB)}
\] {OUT(RB)}
\{ {OUT(LC)}
\} {OUT(RC)}
\n {yycolumn = 1;}
[\t ] {}
. {OUT(OTHER)}
%%
