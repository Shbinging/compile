#include"syntax.tab.h"
#include "treeNode.h"
#include <stdio.h>

int parseOK;
TreeNode* parseTreeRoot;
int main(int argc, char** argv){
    if (argc <= 1) return 1;
    FILE* f = fopen(argv[1], "r");
    if (!f){
        perror(argv[1]);
        return 1;
    }
    parseOK = 1;
    yyrestart(f);
    //yydebug = 1;
    yyparse();
    if (parseOK){
        printTree(parseTreeRoot, 0);
    }
    //for(int i = 0; i < 20; i++) yylex();
    return 0;
}
