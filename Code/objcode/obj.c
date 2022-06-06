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


// set getBlockVar(blockInfo b){
//     set varSet;
//     init_s(&varSet);
//     for(tripleNode q = b->head; q != b->tail; q = q->next){
//         //debugCode(q->val);
//         TripleExp exp = q->val;
//         addVar(src1);
//         addVar(src2);
//         addVar(dest);
//     }
//     return varSet;
// }


// set aliveSet;
// set simpleFuncAliveVarAnalyze(list blockList){
//     set varSet;
//     init_s(&varSet);
//     for(blockItem bi = blockList->head; bi; bi = bi->next){
//         set blockVarSet = getBlockVar(bi->val);
//         list l = getStr_s(blockVarSet);
//         for(strItem varName = l->head; varName; varName = varName->next){
//             addStr_s(varSet, varName->val);
//         }
//     }
//     set aliveSet;
//     init_s(&aliveSet);
//     list varList = getStr_s(varSet);
//     for(strItem q = varList->head; q; q = q->next){
//         if (countStr_s(varSet, q->val) > 1){
//             addStr_s(aliveSet, q->val);
//         }
//     }
//     return aliveSet;
//     // list varList = getStr_s(varSet);
//     // bitmap b;
//     // initBitMap(&b, getNum_s(varSet) + 7);
//     // for(strItem q = varList->head; q; q = q->next){
//     //     char* varName = q->val;
//     //     if (countStr_s(varSet, varName) > 1){
//     //         setBitMap(b, indexStr_s(varSet, varName), 1);
//     //     }else{
//     //         setBitMap(b, indexStr_s(varSet, varName), 0);
//     //     }
//     // }
// }

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
// int isSourceVar(enum Ttype_ type, Operand op, int isDest){
//     if (!op) return 0;
//     switch(type){
//         case t_add:
//         case t_sub:
//         case t_star:
//         case t_div:
//         case t_eq:
//         case t_neq:
//         case t_g:
//         case t_geq:
//         case t_l:
//         case t_leq:
//         case t_assign:
//         if (!isDest){
//             return isVarNormal(op);
//         }else{
//             return isVar(op) && isPoint(op);
//         }
//         case t_read:
//         case t_return:
//         case t_arg:
//             return isVar(op);
//         case t_dec:
//         case t_write:
//         case t_call:
//         case t_func:
//         case t_goto:
//         case t_label:
//         case t_param:
//             return 0;
//         default:
//             assert(0);
//     }
// }

// int isDestVar(enum Ttype_ type, Operand op, int isDest){
//     if (!op) return 0;
//     switch(type){
//         case t_add:
//         case t_sub:
//         case t_star:
//         case t_div:
//         case t_eq:
//         case t_neq:
//         case t_g:
//         case t_geq:
//         case t_l:
//         case t_leq:
//         case t_assign:
//         case t_call:
//         if (!isDest){
//             return 0;
//         }else{
//             return isVar(op) && !isPoint(op);
//         }
//         case t_read:
//         case t_return:
//         case t_dec:
//         case t_func:
//         case t_goto:
//         case t_label:
//         case t_arg:
//             return 0;
//         case t_write:
//         case t_param:
//             return isVar(op);
//         default:
//             assert(0);
//     }
// }

// struct blockAliveVarAnalyzeRes{
//     set varSet;
//     list* varTimestamp;
//     bitmap* aliveMap;
//     int tripleNum;
//     int varNum;
// }blockAliveVarAnalyze(blockInfo block){
//     list aliveBitList;
//     createList(&aliveBitList);
//     set varSet = getBlockVar(block);
//     //init bit-map
//     int varNum = getNum_s(varSet);
//     bitmap aliveMap;
//     initBitMap(&aliveMap, varNum);
//     iterList(getStr_s(varSet), strItem){
//         char* varName = i->val;
//         if (findStr_s(aliveSet, varName)){
//             setBitMap(aliveMap, indexStr_s(varSet, varName), 1);
//         }
//     }
//     struct blockAliveVarAnalyzeRes res;
//     int tripleNum = getBlockTripleNum(block);
//     res.varNum = varNum;
//     res.varSet = varSet;
//     res.tripleNum = tripleNum;
//     res.aliveMap = malloc(sizeof(bitmap) * (tripleNum));
//     for(int i = 0; i < tripleNum; i++) initBitMap(&res.aliveMap[i], varNum);
//     res.varTimestamp = malloc(sizeof(list) * (varNum));
//     for(int i = 0; i < varNum; i++) createList(&res.varTimestamp[i]);
//     int j = tripleNum - 1;
//     tripleNode q = block->head;
//     while(q->next != block->tail) q = q->next;
//     for(;q != block->head->pre; q = q->pre){
//         TripleExp exp = q->val;
//         //debugCode(exp);
//         res.aliveMap[j] = getCopyBitMap(aliveMap);
//         if (isSourceVar(exp->type, exp->src1, 0)){
//             int index = indexStr_s(varSet, getVar(exp->src1));
//             push_back_l(res.varTimestamp[index], intItem_ , j);
//             setBitMap(aliveMap, index, 1);
//         }
//         if (isSourceVar(exp->type, exp->src2, 0)){
//             int index = indexStr_s(varSet, getVar(exp->src2));
//             push_back_l(res.varTimestamp[index], intItem_ , j);
//             setBitMap(aliveMap, index, 1);
//         }
//         if (isSourceVar(exp->type, exp->dest, 1)){
//             int index = indexStr_s(varSet, getVar(exp->dest));
//             push_back_l(res.varTimestamp[index], intItem_ , j);
//             setBitMap(aliveMap, index, 1);
//         }
//         if (isDestVar(exp->type, exp->dest, 1)){
//             int index = indexStr_s(varSet, getVar(exp->dest));
//             setBitMap(aliveMap, index, 0);
//         }
//         //if (exp->src1 && exp->src1->type == t)
//         j--;
//     }
//     return res;
// }


typedef map_t(listItem) map_listItem_t;
const int maxR= 32;

set rTable[maxR];
int rTimeStap[maxR];
map_int_t varToR;
list objCode;
map_int_t stackTable, stackTableTmp;
int esp;
int espFrame;
int varNum;
int totalVarNum;


typedef listNode(instr, int, instrItem_) instrItem_;
typedef instrItem_* instrItem;

// int getVarAddress(char* name){
//     if (findStr_s(aliveSet), name){
//         return *map_get(&stackTable, name);
//     }else{
//         return *map_get(&stackTableTmp, name);
//     }
// }


// void initCode(){
//     createList(&objCode);    
// }
void addCode(instr a){
    push_back_l(objCode, instrItem_, a);
}
instr getInstr(enum instrType type){
    instr a = malloc(sizeof(instr_));
    a->iType = type;
}

void emitInstrLoad(int base, int offset, int dest){
    instr a = getInstr(i_lw);
    a->iOp.r2i1.rs = base;
    a->iOp.r2i1.imm = offset;
    a->iOp.r2i1.rt = dest;
    addCode(a);
}

void emitInstrStore(int base, int offset, int dest){
    instr a = getInstr(i_sw);
    a->iOp.r2i1.rs = base;
    a->iOp.r2i1.imm = offset;
    a->iOp.r2i1.rt = dest;
    addCode(a);
}


// void initRegisterAlloc(){
//     map_init(&varToR);
//     map_init(&stackTableTmp);
//     esp = espFrame;
//     for(int i = 0; i < maxR; i++){
//         init_s(&rTable[i]);
//         rTimeStap[i] = 0;
//     }
// }

#define SIZE(x) ((x) * 4)


// void spill(int r){
//     list varNameList = getStr_s(rTable[r]);
//     iterList(varNameList, strItem){
//         char* varName = i->val;
//         if (findStr_s(aliveSet, varName)){//alive
//             int offset = getVarAddress(varName);
//             emitInstrStore(fp, SIZE(offset), r);
//         }else{
//             if (!map_get(&stackTableTmp, varName)){
//                 esp++;
//                 map_set(&stackTableTmp, varName, esp);
//             }
//             emitInstrStore(fp, SIZE(getVarAddress(varName)), r);
//         }
//     }
// }

// int Allocate(char* name){
//     for(int i = 0; i < maxR; i++){
//         if (!get_num_s(rTable[i])){
//             return i;
//         }
//     }
//     int mi = 0, result = 0;
//     for(int i = 0; i < maxR; i++){
//         if (rTimeStap[i] >= mi){
//             mi = rTimeStap[i];
//             result = i;
//         }
//     }
//     spill(result);
//     return result;
// }

// int Ensure(char* name){
//     if (map_get(varToR, name)) return *map_get(varToR, name);
//     else{
//         int result = Allocate(name);
//         emitInstrLoad(fp, getVarAddress(name), result);
//         return result;
//     }
// }

void emitInstrLabel(int dest){
    instr a = getInstr(i_label);
    a->iOp.l1.dest = op;
    addCode(a);
}

int isPoint(Operand op){
    return op->property == o_point;
}
void emitInstrLi(int r, int imm){
    instr a = getInstr(i_li);
    a->iOp.r1i1.rs = r;
    a->iOp.r1i1.imm = imm;
    addCode(a);
}
void emitInstrLa(int r, char* varName){
    instr a = getInstr(i_la);
    a->iOp.r1l1.rs = r;
    a->iOp.r1l1.varName = varName;
    addCode(a);
}
void emitInstrMove(int rt, int rs){
    instr a = getInstr(i_move);
    a->iOp.r2.rs = rs;
    a->iOp.r2.rt = rt;
    addCode(a);
}
void emitInstrAdd(int rd, int rs, int rt){
    instr a = getInstr(i_add);
    a->iOp.r3.rs = rs;
    a->iOp.r3.rt = rt;
    a->iOp.r3.rd = rd;
    addCode(a);
}
void emitInstrAddi(int rd, int rs, int imm){
    instr a = getInstr(i_addi);
    a->iOp.r2i1.rs = rs;
    a->iOp.r2i1.imm = imm;
    a->iOp.r2i1.rt = rd;
    addCode(a);
}
void emitInstrSub(int rd, int rs, int rt){
    instr a = getInstr(i_sub);
    a->iOp.r3.rs = rs;
    a->iOp.r3.rt = rt;
    a->iOp.r3.rd = rd;
    addCode(a);
}
void emitInstrStar(int rd, int rs, int rt){
    instr a = getInstr(i_mul);
    a->iOp.r3.rs = rs;
    a->iOp.r3.rt = rt;
    a->iOp.r3.rd = rd;
    addCode(a);
}

void emitInstrDiv(int rs, int rt){
    instr a = getInstr(i_div);
    a->iOp.r2.rs = rs;
    a->iOp.r2.rt = rt;
    addCode(a);
}

void emitInstrMflo(int rs){
    instr a = getInstr(i_mflo);
    a->iOp.r1.rs = rs;
    addCode(a);
}
void emitInstrGoto(int dest){
    instr a = getInstr(i_j);
    a->iOp.l1.dest = dest;
    addCode(a);
}
void emitInstrJr(){
    instr a = getInstr(i_jr);
    a->iOp.r1.rs = ra;
    addCode(a);
}
void emitCondGoto(int rs, int rt, int label, enum Ttype_ type){
    instr a = getInstr(i_bge);
    a->iOp.r2l1.rs = rs;
    a->iOp.r2l1.rt = rt;
    a->iOp.r2l1.dest = label;
    switch (type){
        t_eq:
            a->iType = i_beq;break;
        t_neq:
            a->iType = i_bne;break;
        t_g:
            a->iType = i_bgt;break;
        t_l:
            a->iType = i_blt;break;
        t_geq:
            a->iType = i_bge;break;
        t_leq:
            a->iType = i_ble;break;
    }
    addCode(a);
}
void emitInstrJal(char* funcName){
    instr a = getInstr(i_jal);
    a->iOp.func = funcName;
    addCode(a);
}

void emitInstrFunc(char* fucnName){
    instr a= getInstr(i_func);
    a->iOp.func = funcName;
    addCode(a);
}

void isConst(Operand op){
    return op->property == o_const;
}
#define FT canTrans = 1;
#define Alloc(x) Allocate(getVar(x))
void genObjNormal(TripleExp exp){
    int canTrans = 0;
    enum Ttype_ type = exp->type;
    if (type == t_label){
            emitInstrLabel(exp->dest->u.labelId);
            FT
    }
    if (type == t_assign){
            if (isPoint(exp->dest)){
                int regx = Alloc(exp->dest), regy = Alloc(exp->src1);
                emitInstrStore(regx, 0, regy);
            }else{
                int regx = Alloc(exp->dest);
                switch(exp->src1->type){
                    case o_const:
                        emitInstrLi(regx, exp->src1->u.constInt);
                        FT
                    case o_point:
                        emitInstrLoad(Alloc(exp->src1), 0, regx);
                        FT
                    case o_address:
                        emitInstrAddi(regx, fp, getVarAddress(getVar(exp->src1)));
                        FT
                    case o_normal:
                        emitInstrMove(regx, Alloc(exp->src1));
                        FT
                    default:
                    assert(0);
                }
            }
            FT
    }
    if (type == t_add){
        int regx = Alloc(exp->dest), regy = Alloc(exp->src1), regz = Alloc(exp->src2);
        emitInstrAdd(regx, regy, regz);
    }
    if (type == t_sub){
        int regx = Alloc(exp->dest), regy = Alloc(exp->src1), regz = Alloc(exp->src2);
        emitInstrSub(regx, regy, regz);      
    }
    if (type == t_star){
        int regx = Alloc(exp->dest), regy = Alloc(exp->src1), regz = Alloc(exp->src2);
        emitInstrStar(regx, regy, regz);  
    }
    if (type == t_div){
        int regx = Alloc(exp->dest), regy = Alloc(exp->src1), regz = Alloc(exp->src2);
        emitInstrDiv(regy, regz);  
        emitInstrMflo(regx);
    }
    if (type == t_goto){
        emitInstrGoto(exp->dest->u.labelId);
    }
    if (type == t_return){
        int regx = Alloc(exp->dest);
        emitInstrMove(v0, regx);
        emitInstrJr();
    }
    if (type == t_eq){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_eq);
    }
    if (type == t_neq){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_neq);
    }
    if (type == t_g){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_g);
    }
    if (type == t_geq){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_geq);
    }
    if (type == t_l){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_l);
    }
    if (type == t_leq){
        int regx = Alloc(exp->src1), regy = Alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_leq);
    }
}

void genBlockObjNormal(blockInfo block){
    struct blockAliveVarAnalyzeRes res = blockAliveVarAnalyze(i->val);
    varNum = res.varNum;
    list* varTimeStap = res.varTimestamp;
    initRegisterAlloc();
    for(tripleNode i = block->head; i != block->tail; i = i->next){
        TripleExp exp = i->val;
        genObjNormal(exp);
    }
    list var = getStr_s(res.varSet);
    iterList(var, strItem){
        if (findStr_s(aliveSet, i->val)){
            emitInstrStore(fp, getVarAddress(i->val), *map_get(stackTable, i->val));
        }
    }    
}

void genBlockFunc(blockInfo block){
    for(tripleNode i = block->head; i != block->tail; i = i->next){
        TripleExp exp = i->val;
        int s = 0;
        if (exp->type == t_param){
            s++;
            if (s <= 4){
                emitInstrStore(fp, getVarAddress(getVar(exp->dest)), a0 + s - 1);
            }else{
                emitInstrLoad(fp, 4 * (s - 5), a0);
                emitInstrStore(fp, getVarAddress(getVar(exp->dest)), a0);
            }
        }
    }
}

static max(int a, int b){
    return (a >= b) ? a : b;
}
void genBlockCall(blockInfo block){
    int s = 0;
    for(tripleNode i = block->head; i != block->tail; i = i->next){
        TripleExp exp = i->val;
        if (exp->type == t_arg){s++;}
    }    
    int j = 0;
    int s1 = s;
    emitInstrAddi(sp, sp, -4 * max(0, s - 4));
    for(tripleNode i = block->head; i != block->tail; i = i->next){
        TripleExp exp = i->val;
        if (exp->type == t_arg){
            if (s > 4){
                emitInstrStore(sp, j * 4, *map_get(varToR, getVar(exp->dest)));
                j++;
            }else{
                emitInstrMove(a0 + s - 1, *map_get(varToR, getVar(exp->dest)));
            }
            s--;
        }else if (exp->type == t_call){
            emitInstrJal(exp->src1->u.funcPoint->name);
            emitInstrMove(Alloc(exp->dest), v0); //XXX:是否存在指针的情况？
        }
    }
    emitInstrAddi(sp, sp, 4 * max(0, s1 - 4));
}

/*
set rTable[maxR];
int rTimeStap[maxR];
map_int_t varToR;
list objCode;
map_int_t stackTable, stackTableTmp;
int esp;//ok
int espFrame;//ok
int varNum;//
int totalVarNum;//ok
*/
void genFunc(tripleNode funcBlock){
    list c = genBlock(funcBlock);
    aliveSet = simpleFuncAliveVarAnalyze(c);
    set array;
    init_s(array);
    for(tripleNode q = funcBlock; q; q = q->next){
        TripleExp exp = q->val;
        if (exp->type == t_dec){
            addStr_s(array, exp->dest->u.varPoint->name);
            setCountStr_s(array, exp->dest->u.varPoint->name, exp->dest->addtion.size);
        }
        if (exp->type == t_param){
            addStr_s(aliveSet, getVar(exp->dest));
        }
    }
    list varList = getStr_s(aliveSet);
    map_init(&stackTable);
    espFrame = 2;
    iterList(varList, strItem){
        char* varName = i->val;
        map_set(&stackTable, varName, espFrame);
        if (!findStr_s(array, varName)){
            espFrame++;
        }else{
            espFrame += countStr_s(array, varName);
        }
    }
    int frameSize = espFrame * 4;
    emitInstrAddi(sp, sp, -frameSize);
    emitInstrStore(sp, frameSize -4, ra);
    emitInstrStore(sp, frameSize - 8, fp);
    emitInstrAddi(fp, sp, frameSize);
    totalVarNum = get_num_s(aliveSet);
    initRegisterAlloc();
    iterList(c, blockItem){
        Ttype_ type = ((tripleNode)(i->val->head))->val->type;
        if (type == t_arg || type ==t_call){
            genBlockCall(i->val);
        }else if (type == t_func){
            genBlockFunc(i->val);
        }else genBlockObjNormal(i->val);
    }
    emitInstrLoad(sp, frameSize - 4, ra);
    emitInstrLoad(sp, frameSize - 8, fp);
    emitInstrAddi(sp, sp, frameSize);
    emitInstrJr();
}

// list genOBJ(list funcBlock){
//     list obj;
//     createList(&obj);
//     iterList(funcBlock, funcNode){
//         list objCode;
//         createList(&objCode);
//         genFunc(i->val->head);
//         append_list(obj, objCode);
//     }
//     return obj;
// }

// void testBlockAliveAnalyze(list funcBlock){
//     iterList(funcBlock, funcNode){
//         list c = genBlock(i->val->head);
//         aliveSet = simpleFuncAliveVarAnalyze(c);
//         //printBlock(c);
//         // for(blockItem q = p->head; q; q = q->next){
//         //     printf("========\nBLOCK %d\n", q->val->id);
//         //     for(tripleNode m = q->val->head; m != q->val->tail; m = m->next){
//         //          TripleExp tri = m->val;
//         iterList(c, blockItem){
//             printf("\n===============\n");
//             struct blockAliveVarAnalyzeRes res = blockAliveVarAnalyze(i->val);
//             int j = 0;
//             list varName = getStr_s(res.varSet);
//             for(tripleNode q = i->val->head; q != i->val->tail; q = q->next){
//                 debugCode(q->val);
//             }
//             for(tripleNode q = i->val->head; q != i->val->tail; q = q->next){
//                 printf("\n");
//                 debugCode(q->val);
//                 printf("varAlive: ");
//                 iterList(varName, strItem){
//                     int index = indexStr_s(res.varSet, i->val);
//                     if (getBitMap(res.aliveMap[j], index)){
//                         printf("%s, ", i->val);
//                     }
//                 }
//                 j++;
//                 printf("\n");
//             }
//             iterList(getStr_s(res.varSet), strItem){
//                 int index = indexStr_s(res.varSet, i->val);
//                 printf("var %s ", i->val);
//                 iterList(res.varTimestamp[index], intItem){
//                     printf("%d ", i->val);
//                 }
//                 printf("\n");
//             }
//         }
//     }
// }

int totalIR;
int funcNum;
TripleExp* ir;
typedef struct funcIR{
    int ir_s, ir_e;
    int blockNum;
    blockIR* blockIRList;
} funcIR;
funcIR* funcList;
typedef struct blockIR{
    int ir_s, ir_e;
    enum blockIR_type{bt_normal, bt_func, bt_call} type;
} blockIR;
int min(int a, int b){
    return a <= b ? a : b;
}
//t_label, t_func, t_assign, t_add, t_sub, t_star, t_div, t_goto, t_eq, t_neq, t_g, t_l, t_leq, t_geq, t_return ,t_dec, t_arg, t_call, t_param, t_read, t_write
TripleExp getNewExp(TripleExp q){
    TripleExp res = malloc(sizeof(TripleExp_));
    res->type = q->type;
    res->dest = q->dest;
    res->src1 = q->src1;
    res->src2 = q->src2;
    switch(res->type){
        case t_return:
        case t_arg:
            res->dest = NULL;
            res->src1 = q->src1;
        case t_read:
            res->dest = NULL;
            res->src1 = q->dest;
    }
    return res;
}

void getIR(funcNode p){
    totalIR = 0;
    funcNum = 0;
    for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        funcNum++;
        for(tripleNode q = p->val->head; q; q = q->next){
            totalIR++;
        }
    }
    ir = malloc(sizeof(TripleExp) * totalIR);
    funcList = malloc(sizeof(funcIR) * funcNum);
    int s = 0;
    int funcS = 0;
     for(funcNode p = (funcNode)funcBlock->head; p; p = p->next){
        funcList[funcS].ir_s = s;
        for(tripleNode q = p->val->head; q; q = q->next){
            ir[s] = getNewExp(q->val);
            s++;
        }
        funcList[funcS].ir_e = s - 1;
        funcS++;
    }
}
//t_label, t_func, t_assign, t_add, t_sub, t_star, t_div, t_goto, t_eq, t_neq, t_g, t_l, t_leq, t_geq, t_return ,t_dec, t_arg, t_call, t_param, t_read, t_write
static int isBranch(enum Ttype_  type){
    return (t_goto <= type && type <= t_geq) || type == t_call || type == t_return
    //return (type == t_eq) || (type == t_geq) || (type == t_g) || (type == t_leq) || (type == t_l) || (type == t_goto) || (type == t_call) || (type == t_return);
}

void splitIR(){
    for(int i = 0; i < funcNum; i++){
        int blockNum = 1;
        for(int j = funcList[i].ir_s + 1; j <= funcList[i].ir_e; j++){
            TripleExp q = ir[j], pre = ir[j - 1];
            if (isBranch(pre->type) || q->type == t_label || (q->type == t_arg && pre->type != t_arg) || (q->type != t_param && (pre->type == t_func || pre->type == t_param))){
                blockNum++;
            }
        }
        funcList[i].blockNum = blockNum;
        funcList[i].blockIRList = malloc(sizeof(blockIR) * blockNum);
        blockIR* blocks = funcList[i].blockIRList;
        blocks[0].type == t_func;
        blocks[0].ir_s = funcList[i].ir_s;
        int p = 0;
        TripleExp pre = NULL;
        for(int j = funcList[i].ir_s + 1; j <= funcList[i].ir_e; j++){
            TripleExp q = ir[j], pre = ir[j - 1];
            if (isBranch(pre->type) || q->type == t_label || (q->type == t_arg && pre->type != t_arg) || (q->type != t_param && (pre->type == t_func || pre->type == t_param))){
                blocks[p].ir_e = j - 1;
                p++;
                blocks[p].ir_s = j;
            }
            pre = q;
        }
        blocks[blockNum - 1].ir_e = funcList[i].ir_e;
    }
}


set totalVar;
int getVarIdByOp(Operand op){
    return indexStr_s(totalVar, getVar(op));
}
int getVarIdByName(char* name){
    return indexStr_s(totalVar, name);
}
int getBlockVarNum(){
    return getNum_s(varId);
}
set getVarToInt(funcIR func){
    set totalVar;
    init_s(&totalVar);
    for(int i = func.ir_s; i <= func.ir_e; i++){
        if (isVar(ir[i]->src1)) addStr_s(totalVar, getVar(ir[i]->src1));
        if (isVar(ir[i]->src2)) addStr_s(totalVar, getVar(ir[i]->src2));
        if (isVar(ir[i]->dest)) addStr_s(totalVar, getVar(ir[i]->dest));
    }
    return totalVar;
}

bitmap FuncAliveVarAnalyze(funcIR func){
    bitmap res;
    initBitMap(&res, getBlockVarNum());
    list varList = getStr_s(totalVar);
    for(strItem q = varList->head; q; q = q->next){
        if (countStr_s(totalVar, q->val) > 1){
            setBitMap(getVarId(q->val), 1);
        }
    }
    return res;
}

typedef struct vector_{
    int length, pos, size;
    int* a;
}vector_;
typedef vector_* vector;

vector* varsUseTime;
bitmap* varsAliveMap;
bitmap globalAliveVar;

void init_v(vector* vec){
    *vec = malloc(sizeof(vector_));
    (*vec)->length = 0;
    (*vec)->pos = 0;
    (*vec)->size = 16;
    (*vec)->a = malloc(sizeof(int) * 16);
}
void push_back_v(vector vec, int val){
    if (vec->length + 1> vec->size){
        vec->size *= 4;
        int* b = malloc(sizeof(int) * vec->size);
        for(int i = 0; i < vec->length; i++){
            b[i] = vec->a[i];
        }
        free(vec->a);
        vec->a = b;
    }
    b[vec->length++] = val;
}

void resize_v(vector vec, int size){
    for(int i = 0; i < size; i++) push_back_v(vec, 0);
}

int pop_v(vector vec){
    if (vec->pos + 1 >= vec->length) return -1;
    else return vec->a[vec->pos++];
}

int top_v(vector vec){
    return vec->a[vec->pos];
}

int del_v(vector vec, int val){
    for(int i = 0; i < vec->length; i++){
        if (vec->a[i] == val){
            for(int j = i; j < vec->length - 1; j++){
                vec->a[j] = vec->a[j + 1];
            }
            vec->length--;
            break;
        }
    }
}

int isEmpty_v(vector vec){
    return vec->pos >= vec->length;
}
int isCalcExp(TripleExp op){
    if (op->type <= t_func || op->type == t_dec) return 0;
    return 1;
}

#define aliveVar(x) setBitMap(aliveMap, id, 1); push_back_v(varsUseTime[id], i); 
void blockAliveVarAnalyze(blockIR block){
    int irNum = block.ir_e - block.ir_s + 1;
    varsAliveMap = malloc(sizeof(bitmap) * irNum);
    varsUseTime = malloc(sizeof(vector) * getBlockVarNum());
    for(int i = 0; i < irNum; i++) initBitMap(&varsAliveMap[i]; getBlockVarNum());
    for(int i = 0; i < getBlockVarNum(); i++){
        init_v(&varsUseTime[i]); 
    }
    bitmap aliveMap = getCopyBitMap(globalAliveVar);
    for(int i = block.ir_e; i >= block.ir_s; i--){
        varsAliveMap[i] = getCopyBitMap(aliveMap);
        TripleExp exp = ir[i];
        if (isCalcExp(exp)){
            if (exp->src1 && isVar(exp->src1)){ aliveVar(getVarIdByOp(exp->src1))}
            if (exp->src2 && isVar(exp->src2)){ aliveVar(getVarIdByOp(exp->src2))}
            if (exp->dest && isVar(exp->dest) && isPoint(exp->dest)) {aliveVar(getVarIdByOp(exp->dest))}
            if (exp->dest && isVar(exp->dest) && !isPoint(exp->dest)){deadVar(getVarIdByOp(exp->dest))}
        }
    }
}

int* varAddress;
int* varAlloc;
vector rtoVar[maxR];
int curIR;
int esp;
int init_mem_alloc(){
    varAddress = malloc(sizeof(int) * getBlockVarNum());
    memset(varAddress, 0, sizeof(varAddress));
    for(int i = 0; i < totalIR; i++){
        if (ir[i]->type == t_dec){
            varAddress[getVarIdByOp(ir[i]->dest)] = ir[i]->dest->addtion.size;
        }
    } 
    esp = 2;
    for(int i = 0; i < getBlockVarNum(); i++){
        if (getBitMap(globalAliveVar, i)){
            if (varAddress[i]){
                esp += varAddress[i];
                varAddress[i] = esp;
            }else{
                esp += 1;
                varAddress[i] = esp;
            }
        }
    }
    return esp;
}

int init_reg_alloc(){
    varAlloc = malloc(sizeof(int) * getBlockVarNum());
    memset(varAlloc, 0, sizeof(varAlloc));
    for(int i = 0; i < maxR; i++){ 
        init_v(&rtoVar[i]);
    }
    
}
int getVarAddr(int id){
    //XXX::新申请
    if (varAddress[id]) return varAddress[id] * 4;
    else return varAddress[id] = (++esp) * 4;
}
void spill(int result){
    for(int j = 0; j < rtoVar[j]->length; j++){
        int var = rtoVar[j]->a[j];
        emitInstrStore(fp, getVarAddr(var), result);
    }
}

int allocate(){
    for(int i = t0; i <= s7; i++){
        if(!rtoVar[i]->length) return i;
    }
    int mx = 0, result = 0;
    for(int i = t0; i <= s7; i++){
        int mx1 = 0;
        for(int j = 0; j < rtoVar[i]->length; j++){
            int var = rtoVar[i]->a[j];
            while(!isEmpty_v(varsUseTime[var]) && top_v(varsUseTime[var]) < curIR) pop_v(varsUseTime[v]);
            if (!isEmpty_v(varsUseTime[var])) mx1 = max(mx1, varsUseTime[var]);
        }
        if (mx1 > mx){
            mx = mx1;
            result = i;
        }
    }
    spill(result);
    return result;
}

int ensure(int var_id){
    if (varAlloc[var_id]) return varAlloc[var_id];
    int result = allocate();
    emitInstrLoad(fp, getVarAddr(var_id), result);
    varAlloc[var_id] = result;
    push_back_v(rtoVar[result], var_id);
    return result;
}

void ensureOp(Operand op){
    assert(isVar(op));
    return ensure(getVarIdByOp(op));
}

void free(int var_id){
    if (!getBitMap(varsAliveMap[curIR], var_id)){
        if (varAlloc[var_id]){
            del_v(rtoVar[varAlloc[var_id]], var_id);
        }
        varAlloc[var_id] = 0;
    }
}

void freeOp(Operand op){
    assert(isVar(op));
    free(getVarIdByOp(op));
}

void alloc(int var_id){
    int result = allocate();
    varAlloc[var_id] = result;
    rtoVar[result]->length = 0;
    push_back_v(rtoVar[result], var_id);
}
void allocOp(Operand op){
    assert(isVar(op));
    alloc(getVarIdByOp(op));
}
void genObjCode(TripleExp exp){
    int canTrans = 0;
    enum Ttype_ type = exp->type;
    if (type == t_label){
            emitInstrLabel(exp->dest->u.labelId);
            FT
    }
    if (type == t_assign){
            assert(isVar(exp->dest));
            if (isPoint(exp->dest)){
                //int regx = ensureOp(exp->dest), regy = ensureOp(exp->src1);
                emitInstrStore(ensureOp(exp->dest), 0, ensureOp(exp->src1));
            }else{
                int regx = allocOp(exp->dest);
                switch(exp->src1->type){
                    case o_const:
                        emitInstrLi(regx, exp->src1->u.constInt);
                        FT
                        break;
                    case o_point:
                        emitInstrLoad(ensureOp(exp->src1), 0, regx);
                        freeOp(exp->src1);
                        FT
                        break;
                    case o_address:
                        emitInstrAddi(regx, fp, getVarAddr(getVarIdByOp(exp->src1)));
                        FT
                        break;
                    case o_normal:
                        emitInstrMove(regx, ensureOp(exp->src1));
                        freeOp(exp->src1);
                        FT
                        break;
                    default:
                    assert(0);
                }
            }
            FT
    }
    if (type == t_add){
        //int regx = allocOp(exp->dest), regy = allocOp(exp->src1), regz = allocOp(exp->src2);
        emitInstrAdd(allocOp(exp->dest), ensureOp(exp->src1), ensureOp(exp->src2));
        freeOp(exp->src1);
        freeOp(exp->src2);
        FT
    }
    if (type == t_sub){
        //int regx = allocOp(exp->dest), regy = allocOp(exp->src1), regz = allocOp(exp->src2);
        emitInstrSub(allocOp(exp->dest), ensureOp(exp->src1), ensureOp(exp->src2));
        freeOp(exp->src1);
        freeOp(exp->src2);  
        FT
    }
    if (type == t_star){
        emitInstrStar(allocOp(exp->dest), ensureOp(exp->src1), ensureOp(exp->src2));
        freeOp(exp->src1);
        freeOp(exp->src2); 
        FT  
    }
    if (type == t_div){
        //int regx = allocOp(exp->dest), regy = allocOp(exp->src1), regz = allocOp(exp->src2);
        emitInstrDiv(ensureOp(exp->src1), ensureOp(exp->src2));  
        emitInstrMflo(allocOp(exp->dest));
        freeOp(exp->src1);
        freeOp(exp->src2); 
        FT
    }
    if (type == t_goto){
        assert(exp->dest);
        emitInstrGoto(exp->dest->u.labelId);
        FT
    }
    if (type == t_return){
        //int regx = allocOp(exp->dest);
        emitInstrLoad(sp, frameSize - 4, ra);
        emitInstrLoad(sp, frameSize - 8, fp);
        emitInstrAddi(sp, sp, frameSize);
        emitInstrMove(v0, ensureOp(exp->src1));
        emitInstrJr();
        FT
    }
    if (type == t_eq){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_eq);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    if (type == t_neq){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_neq);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    if (type == t_g){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_g);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    if (type == t_geq){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_geq);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    if (type == t_l){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_l);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    if (type == t_leq){
        emitCondGoto(ensureOp(exp->src1), ensureOp(exp->src2), exp->dest->u.labelId, t_leq);
        freeOp(exp->src1);freeOp(exp->src2);
        FT
    }
    assert(canTrans);
}

int frameSize;
void genFuncBlock(blockIR block){
    TripleExp exp = ir[block.ir_s];
    assert(exp->type == t_func);
    emitInstrFunc(exp->dest->u.funcPoint->name);
    emitInstrAddi(sp, sp, -frameSize);
    emitInstrStore(sp, frameSize -4, ra);
    emitInstrStore(fp, frameSize - 8, sp);
    emitInstrAddi(fp, sp, frameSize);

    int s = 0;
    for(curIR = block.ir_s + 1; curIR <= block.ir_e; i++){
        assert(ir[curIR]->type == t_param);
        exp = ir[curIR];
        assert(exp->dest && isVar(exp->dest));
        if (s < 4){
            emitInstrStore(fp, getVarAddr(getVar(exp->dest)), a0 + s);
        }else{
            emitInstrLoad(fp, 4 * (s - 4), a0);
            emitInstrStore(fp, getVarAddr(getVar(exp->dest)), a0);
        }
        s++;
    }
}

void genNormalBlock(blockIR block){
    blockAliveVarAnalyze(block);
    init_reg_alloc();
    for(curIR = block.ir_s; curIR <= block.ir_e; curIR++){
        genObjCode(ir[curIR]);
    }
}

void genCallBlock(blockIR block){
    int s = 0;
    for(curIR = block.ir_s; curIR <= block.ir_e; curIR++){
        if (ir[curIR]->type == t_call) break;
        assert(ir[curIR]->type == t_arg);
        s++;
    }
    emitInstrAddi(sp, sp, -4 * max(0, s - 4));
    for(curIR = block.ir_s; curIR <= block.ir_e; curIR++){
        if (ir[curIR]->type == t_call) break;
        assert(ir[curIR]->type == t_arg);
        s--;
        if (s >= 4){
            assert(isVar(ir[curIR]->src1));
            emitInstrStore(sp, (s - 4)* 4, getVarAddr(ir[curIR]->src1));
        }else{
            emitInstrMove(a0 + s, ensureOp(ir[curIR]->src1));
        }
    }
    assert(ir[curIR]->type == t_call);
    emitInstrAddi(sp, sp, 4 * max(0, s - 4));
    emitInstrAddi(fp, sp, frameSize);
}

void genFuncOBJ(funcIR func){
    totalVar = getVarToInt(func);
    globalAliveVar = FuncAliveVarAnalyze(func);
    frameSize = init_mem_alloc() * 4;
    genFuncBlock(func.blockIRList[0]);
    for(int i = 1; i < func.blockNum; i++){
        enum Ttype_ type = ir[func.blockIRList[i].ir_s]->type;
        if (type == t_call || type == t_arg) genCallBlock(func.blockIRList[i]);
        else genNormalBlock(func.blockIRList[i]);
    }
}