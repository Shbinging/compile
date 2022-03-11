%{
//#define OUT(type) printf(#type":%s len:%d\n", yytext, (int)strlen(yytext));
#define OUT(type)   preType = getType(type);\
    lastCh = yytext[strlen(yytext) - 1];\
    return type;
#include <string.h>
#include "syntax1.tab.h"
#define getType(type) type##_use
enum typeList{
    getType(NULL),
    getType(INT),
    getType(ADD),
    getType(SUB),
    getType(MUL),
    getType(DIV),
    getType(LP),
    getType(RP),
    getType(ERR)
};
enum typeList preType = getType(NULL);
char lastCh = 0;
%}
letter [a-zA-Z]
num [0-9]
%%
[+-]?({num}+|0[xX][0-9A-Fa-f]+) { 
    if (yytext[0] == '+' || yytext[0] == '-'){
        if (preType == getType(INT) || yytext[0] == lastCh){
            REJECT;
        }else{
            yylval = atoi(yytext);
            OUT(INT)
        }
    }
    else{
        yylval = atoi(yytext); 
        OUT(INT)
    }
} //INT

\+ {OUT(ADD)}
- {OUT(SUB)}
\* {OUT(MUL)}
\/ {OUT(DIV)}
\( {OUT(LP)}
\) {OUT(RP)}
. {OUT(ERR)}
%%

// int main(int argc, char** argv) {
//     if (argc > 1) {
//         if (!(yyin = fopen(argv[1], "r"))) {
//             perror(argv[1]);
//         return 1;
//         }
//     }
//     yylex();
//     return 0;
// }