#ifndef __objUtil__
#define __objUtil__
#include "../sdt/sdt.h"
#include "../utils/list/list.h"
#include "../ir/irUtils.h"



typedef struct blockInfo_{
    tripleNode head, tail;
    int id;
} blockInfo_;
typedef struct instr_{
    enum instrType{i_li, i_la, i_move, i_bgt, i_bge, i_blt, i_ble, i_label, i_add, i_addi, i_sub, i_mul, i_div, i_mflo, i_lw, i_sw, i_j, i_jal} iType;
    union oprand
    {
        struct R3{
            int rs, rt, rd;
        }r3;
        struct R2I1{
            int rs, rt, imm;
        }r2i1;
        struct L1{
            char* dest;
        }l1;
        struct R2L1{
            int rs, rt;
            char* dest;
        }r2l1;
        struct R2{
            int rs, rt;
        }r2;
        struct R1{
            int rs;
        }
    }iOp;
    
} instr_;

typedef instr_* instr;
typedef listNode(instr_, int, instrItem_) instrItem_;
typedef instrItem_* instrItem;

typedef blockInfo_* blockInfo;
typedef listNode(blockInfo_, int, blockItem_) blockItem_;
typedef blockItem_* blockItem;
typedef listNode(listHead, int, listItem_) listItem_;
typedef listItem_* listItem;
typedef listHead* list;

list voidSplitList(list funcBlock);
void buildCFG(tripleNode funcBlock);
void testCFG(list funcBlock);
list genBlock(tripleNode q);
void modifyIr(list funcBlock);
void printBlock(list p);
#endif