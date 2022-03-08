%{
#include <stdio.h>
%}

/* declared tokens */
%token INT
%token ADD SUB MUL DIV LP RP
%token ERR
int s = 0;
#define DE(type)
%%
Calc : /* empty */
| Exp { printf("= %d\n", $1); }
;
Exp : Factor
| Exp ADD Factor { $$ = $1 + $3; }
| Exp SUB Factor { $$ = $1 - $3; }
;
Factor : Term
| Factor MUL Term { $$ = $1 * $3; }
| Factor DIV Term { $$ = $1 / $3; }
;
Term : INT
|LP Exp RP
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
