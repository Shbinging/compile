#ifndef __objUtil__
#define __objUtil__
#include "../sdt/sdt.h"
#include "../utils/list/list.h"
#include "../ir/irUtils.h"



typedef struct blockInfo_{
    tripleNode head, tail;
    int id;
} blockInfo_;
typedef blockInfo_* blockInfo;
typedef listNode(blockInfo_, int, blockItem_) blockItem_;
typedef blockItem_* blockItem;
typedef listNode(listHead, int, listItem_) listItem_;
typedef listItem_* listItem;
typedef listHead* list;

list voidSplitList(list funcBlock);
void buildCFG(tripleNode funcBlock);
void testCFG(list funcBlock);
#endif