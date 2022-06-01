#include"frontEnd/syntax.tab.h"
#include "utils/syntaxTree/treeNode.h"
#include "sdt/sdt.h"
#include "utils/list/list.h"
#include <stdio.h>
#include "ir/ir.h"
#include "ir/irOptimization.h"
#include "objcode/objUtil.h"
#include "objcode/bitmap.h"
int parseOK;
TreeNode* parseTreeRoot;
int main(int argc, char** argv){
    //freopen(argv[2], "w", stdout);
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
        //printTree(parseTreeRoot, 0);
        sdtTree(parseTreeRoot, 0);
    }else return 0;
    list irOri = Program0(parseTreeRoot);

    getOptIr(irOri);
    //deadVarLiminate(irOri); 
    printTripe(irOri);
    //printBlock(c);
    testCFG(irOri);
    
    bitmap bt = initBitMap(128);
    set
    //for(int i = 0; i < 20; i++) yylex();
    fclose(stdout);
    return 0;
}
