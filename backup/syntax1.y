%{
#include <stdio.h>
int s = 0;
#define DE(type) s++;\ 
    printf("%d:"#type"\n", s);
%}

/* declared tokens */
%token INT
%token ADD SUB MUL DIV LP RP
%token ERR

%%
Calc : /* empty */
| Exp { printf("= %d\n", $1); DE(exp)}
;
Exp : Factor
| Exp ADD Factor { $$ = $1 + $3; DE(add)}
| Exp SUB Factor { $$ = $1 - $3; DE(sub)}
| SUB Factor {$$ = - $2; DE(FU)}
;
Factor : Term
| Factor MUL Term { $$ = $1 * $3; DE(mul)}
| Factor DIV Term { $$ = $1 / $3; DE(div)}
;
Term : INT {$$ = $1; DE(intt)}
|LP Exp RP {$$ = $2; DE(lrp)}
;
Err : ERR{yyerror("syntax error!");}
%%
#include"lexTry.yy.c"
int main(int argc, char** argv)
{
if (argc <= 1) return 1;
FILE* f = fopen(argv[1], "r");
if (!f)
{
perror(argv[1]);
return 1;
}
 yyrestart(f);
 //yydebug = 1;
 yyparse();
 return 0;
 }
yyerror(char* msg) {
fprintf(stderr, "error: %s\n", msg);
}
