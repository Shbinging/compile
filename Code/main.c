#include"frontEnd/syntax.tab.h"
#include "utils/syntaxTree/treeNode.h"
#include "sdt/sdt.h"
#include "utils/list/list.h"
#include <stdio.h>
#include "ir/ir.h"
#include "ir/irOptimization.h"
#include "objcode/objUtil.h"
#include "objcode/bitmap.h"
#include "objcode/set.h"
#include "objcode/heap.h"
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
    //printTripe(irOri);

    //testCFG(irOri);

    //printf("%s\n", itoa(0));
    //printf("%s\n", itoa(100));
    // set s;
    // init_s(&s);
    // addNum_s(s, 1);
    // addStr_s(s, "333");
    // addNum_s(s, 1);
    // list l = getStr_s(s);
    // strItem item = getIndex_l(l, 0);
    // printf("%s\n", item->val);
    // for(strItem item = l->head; item; item = item->next){
    //     printf("%s\n", item->val);
    // }
    // heap h;
    // init_heap(&h, 10);
    // push_h(h, 2, "123");
    // push_h(h, 1, "456");
    // heapNode hh = pop_h(h);
    // printf("%d %s\n", hh->key, hh->val);
    // push_h(h, 3, "234");
    // printf("%d %s\n", top_h(h)->key, top_h(h)->val);
    // pop_h(h);
    // printf("%d\n", empty_h(h));
    // pop_h(h);
    // printf("%d\n", empty_h(h));
    // printf("%d\n", countInt_s(s, 1));
    //bitmap bt = initBitMap(128);
    //for(int i = 0; i < 20; i++) yylex();
    fclose(stdout);
    return 0;
}
