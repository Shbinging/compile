%{
#define OUT(type) printf(#type":%s len:%d\n", yytext, (int)strlen(yytext));
#include <string.h>
%}
letter [a-zA-Z]
num [0-9]
%%
[+-]?({num}+|0[xX][0-9A-Fa-f]+) {OUT(INT)} //INT
[+-]?({num}*\.{num}+|{num}+\.)([Ee][+-]?{num}+)? {OUT(FLOAT)}//float
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
[\n\t ] {}
. {OUT(OTHER)}
%%
int main(int argc, char** argv) {
    if (argc > 1) {
        if (!(yyin = fopen(argv[1], "r"))) {
            perror(argv[1]);
        return 1;
        }
    }
    yylex();
    return 0;
}