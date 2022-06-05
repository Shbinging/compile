#include "obj.h"
#include "objUtil.h"
#include "assert.h"
static int isVar(Operand o){
    return o && (o->type == o_var || o->type == o_tmpVar);
} 

static int isVarNormal(Operand o){
    return o && (o->type == o_var || o->type == o_tmpVar) && (o->property != o_point);
}

static char* getVar(Operand o){
    if (!o) return NULL;
    if (o->type == o_var) return o->u.varPoint->name;
    if (o->type == o_tmpVar) return itoa(o->u.tmpId);
}

#define addVar(x) if (exp->x && isVar(exp->x)) addStr_s(varSet, getVar(exp->x))


set getBlockVar(blockInfo b){
    set varSet;
    init_s(&varSet);
    for(tripleNode q = b->head; q != b->tail; q = q->next){
        //debugCode(q->val);
        TripleExp exp = q->val;
        addVar(src1);
        addVar(src2);
        addVar(dest);
    }
    return varSet;
}


set aliveSet;
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
        if (countStr_s(varSet, q->val) > 1){
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



#define iterList(x, valType) for(valType i = (x)->head; i; i = i->next)

int getBlockTripleNum(blockInfo block){
    int s = 0;
    for (tripleNode p = block->head; p != block->tail; p = p->next){
        s++;
    }
    return s;
}

int isPoint(Operand op){
    return op && op->property == o_point;
}
int isSourceVar(enum Ttype_ type, Operand op, int isDest){
    if (!op) return 0;
    switch(type){
        case t_add:
        case t_sub:
        case t_star:
        case t_div:
        case t_eq:
        case t_neq:
        case t_g:
        case t_geq:
        case t_l:
        case t_leq:
        case t_assign:
        if (!isDest){
            return isVarNormal(op);
        }else{
            return isVar(op) && isPoint(op);
        }
        case t_read:
        case t_return:
        case t_arg:
            return isVar(op);
        case t_dec:
        case t_write:
        case t_call:
        case t_func:
        case t_goto:
        case t_label:
        case t_param:
            return 0;
        default:
            assert(0);
    }
}

int isDestVar(enum Ttype_ type, Operand op, int isDest){
    if (!op) return 0;
    switch(type){
        case t_add:
        case t_sub:
        case t_star:
        case t_div:
        case t_eq:
        case t_neq:
        case t_g:
        case t_geq:
        case t_l:
        case t_leq:
        case t_assign:
        case t_call:
        if (!isDest){
            return 0;
        }else{
            return isVar(op) && !isPoint(op);
        }
        case t_read:
        case t_return:
        case t_dec:
        case t_func:
        case t_goto:
        case t_label:
        case t_arg:
            return 0;
        case t_write:
        case t_param:
            return isVar(op);
        default:
            assert(0);
    }
}

struct blockAliveVarAnalyzeRes{
    set varSet;
    list* varTimestamp;
    bitmap* aliveMap;
    int tripleNum;
    int varNum;
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
    struct blockAliveVarAnalyzeRes res;
    int tripleNum = getBlockTripleNum(block);
    res.varNum = varNum;
    res.varSet = varSet;
    res.tripleNum = tripleNum;
    res.aliveMap = malloc(sizeof(bitmap) * (tripleNum));
    for(int i = 0; i < tripleNum; i++) initBitMap(&res.aliveMap[i], varNum);
    res.varTimestamp = malloc(sizeof(list) * (varNum));
    for(int i = 0; i < varNum; i++) createList(&res.varTimestamp[i]);
    int j = tripleNum - 1;
    tripleNode q = block->head;
    while(q->next != block->tail) q = q->next;
    for(;q != block->head->pre; q = q->pre){
        TripleExp exp = q->val;
        //debugCode(exp);
        res.aliveMap[j] = getCopyBitMap(aliveMap);
        if (isSourceVar(exp->type, exp->src1, 0)){
            int index = indexStr_s(varSet, getVar(exp->src1));
            push_back_l(res.varTimestamp[index], intItem_ , j);
            setBitMap(aliveMap, index, 1);
        }
        if (isSourceVar(exp->type, exp->src2, 0)){
            int index = indexStr_s(varSet, getVar(exp->src2));
            push_back_l(res.varTimestamp[index], intItem_ , j);
            setBitMap(aliveMap, index, 1);
        }
        if (isSourceVar(exp->type, exp->dest, 1)){
            int index = indexStr_s(varSet, getVar(exp->dest));
            push_back_l(res.varTimestamp[index], intItem_ , j);
            setBitMap(aliveMap, index, 1);
        }
        if (isDestVar(exp->type, exp->dest, 1)){
            int index = indexStr_s(varSet, getVar(exp->dest));
            setBitMap(aliveMap, index, 0);
        }
        //if (exp->src1 && exp->src1->type == t)
        j--;
    }
    return res;
}


void testBlockAliveAnalyze(list funcBlock){
    iterList(funcBlock, funcNode){
        list c = genBlock(i->val->head);
        aliveSet = simpleFuncAliveVarAnalyze(c);
        //printBlock(c);
        // for(blockItem q = p->head; q; q = q->next){
        //     printf("========\nBLOCK %d\n", q->val->id);
        //     for(tripleNode m = q->val->head; m != q->val->tail; m = m->next){
        //          TripleExp tri = m->val;
        iterList(c, blockItem){
            printf("\n===============\n");
            struct blockAliveVarAnalyzeRes res = blockAliveVarAnalyze(i->val);
            int j = 0;
            list varName = getStr_s(res.varSet);
            for(tripleNode q = i->val->head; q != i->val->tail; q = q->next){
                debugCode(q->val);
            }
            for(tripleNode q = i->val->head; q != i->val->tail; q = q->next){
                printf("\n");
                debugCode(q->val);
                printf("varAlive: ");
                iterList(varName, strItem){
                    int index = indexStr_s(res.varSet, i->val);
                    if (getBitMap(res.aliveMap[j], index)){
                        printf("%s, ", i->val);
                    }
                }
                j++;
                printf("\n");
            }
            iterList(getStr_s(res.varSet), strItem){
                int index = indexStr_s(res.varSet, i->val);
                printf("var %s ", i->val);
                iterList(res.varTimestamp[index], intItem){
                    printf("%d ", i->val);
                }
                printf("\n");
            }
        }
    }
}