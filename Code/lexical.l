%{
#define OUT(type) printf(#type":%s\n", yytext);
%}
letter [a-zA-Z]
num [0-9]
%%
[+-]?{num}+ {OUT(INT)} //INT
[+-]?({num}*\.{num}+|{num}+\.) {OUT(FLOAT)}//float
(_|{letter})(_|{letter}|{num})* {OUT(ID)}
; {OUT(SEMI)}
, {OUT(COMMA)}
= {OUT(ASSIGNOP)}
>|<|>=|<=|==|!= {OUT(RELOP)}
\+ {OUT(PLUS)}
- {OUT(MINUS)}
\* {OUT(STAR)}
\/ {OUT(DIV)}
\n {}
. {}
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