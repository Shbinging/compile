#ifndef __tree__node
#define __tree__node
#define makeType(type) node##type

enum nodeType{
    makeType(YFNULL),
    makeType(YFFULL),
    makeType(ID),
    makeType(TYPE),
    makeType(INT),
    makeType(FLOAT),
    makeType(KEY)
};
typedef struct TreeNode{
    enum nodeType type;
    char* name;
    union{
        int lineNo;
        int val_int;
        float val_float;
        char* type;
        char* varName;
    }info;
    struct TreeNode* son;
    struct TreeNode* bro;
} TreeNode;
extern int parseOK;
extern void printTree(TreeNode*, int);
extern void print(TreeNode*, int);
extern TreeNode* parseTreeRoot;
extern TreeNode* make_tree(enum nodeType type, char* name, int lineNo, int num, ...);
#endif