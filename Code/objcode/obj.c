#include "obj.h"

static int isVar(Operand o){
    return o && (o->type == o_var || o->type == o_tmpVar);
} 

static char* getVar(Operand o){
    if (o->type == o_var) return o->u.varPoint->name;
    if (o->type == o_tmpVar) return itoa(o->u.tmpId);
}

#define addVar(x) if (exp->x && isVar(exp->x)) addStr_s(varSet, getVar(exp->x))


set getBlockVar(blockInfo b){
    set varSet;
    init_s(&varSet);
    for(tripleNode q = b->head; q != b->tail; q = q->next){
        TripleExp exp = q->val;
        addVar(src1);
        addVar(src2);
        addVar(dest);
    }
    return varSet;
}


set simpleFuncAliveVarAnalyze(list blockList){
    set varSet;
    init_s(&varSet);
    for(blockItem bi = blockList->head; bi; bi = bi->next){
        set blockVarSet = getBlockVar(bi->val);
        list l = getStr_s(blockVarSet);
        for(strItem varName = l->head; varName; varName = varName->next){
            addStr_s(varSet, varName->val);
        }
    }
    set aliveSet;
    init_s(&aliveSet);
    list varList = getStr_s(varSet);
    for(strItem q = varList->head; q; q = q->next){
        if (countStr_s(varSet, q->val)){
            addStr_s(aliveSet, q->val);
        }
    }
    return aliveSet;
    // list varList = getStr_s(varSet);
    // bitmap b;
    // initBitMap(&b, getNum_s(varSet) + 7);
    // for(strItem q = varList->head; q; q = q->next){
    //     char* varName = q->val;
    //     if (countStr_s(varSet, varName) > 1){
    //         setBitMap(b, indexStr_s(varSet, varName), 1);
    //     }else{
    //         setBitMap(b, indexStr_s(varSet, varName), 0);
    //     }
    // }
}

// set getFuncAliveVar(blockInfo b, bitmap alivebm, set varSet){
//     set aliveVarSet;
//     list varList = getStr_s(varSet);
//     for(strItem q = varList->head; q; q = q->next){
//         char* varName = q->val;
//         if (getBitMap(b, indexStr_s(varSet, varName)) == 1){
//             addStr_s(aliveVarSet, varName);
//             setCountStr_s(aliveVarSet, varName, countStr_s(varSet, varName));
//         }
//     }
//     return aliveVarSet;
// }


set aliveSet;
#define iterList(x, valType) for(valType i = (x)->head; i; i = i->next)

int getBlockTripleNum(blockInfo block){
    int s = 0;
    iterList(block, tripleNode){
        s = s + 1;
    }
    return s;
}

struct blockAliveVarAnalyzeRes{
    set varSet;
    list* varTimestamp;
    bitmap* aliveMap;
}blockAliveVarAnalyze(blockInfo block){
    list aliveBitList;
    createList(&aliveBitList);
    set varSet = getBlockVar(block);
    //init bit-map
    int varNum = getNum_s(varSet);
    bitmap aliveMap;
    initBitMap(&aliveMap, varNum);
    iterList(getStr_s(varSet), strItem){
        char* varName = i->val;
        if (findStr_s(aliveSet, varName)){
            setBitMap(aliveMap, indexStr_s(varSet, varName), 1);
        }
    }
    int j = 0;
    struct blockAliveVarAnalyzeRes res;
    int tripleNum = getBlockTripleNum(block);
    res.aliveMap = malloc(sizeof(bitmap) * (tripleNum + 1));
    res.varTimestamp = malloc(sizeof(list) * (getNum_s(varNum)));
    for(tripleNode q = block->tail->pre; q != block->head->pre; q = q->pre){
        TripleExp exp = q->val;
        //if (exp->src1 && exp->src1->type == t)
        j++;
    }
}