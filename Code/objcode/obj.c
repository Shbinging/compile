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


typedef map_t(listItem) map_listItem_t;
const int maxR= 18;

set rTable[maxR];
int rTimeStap[maxR];
map_int_t varToR;
list objCode;
map_int_t stackTable, stackTableTmp;
int esp;
int varNum;
int totalVarNum;


typedef listNode(instr, int, instrItem_) instrItem_;
typedef instrItem_* instrItem;

int getVarAddress(char* name){
    if (findStr_s(aliveSet), name){
        return *map_get(&stackTable, name);
    }else{
        return *map_get(&stackTableTmp, name);
    }
}


void initCode(){
    createList(&objCode);    
}
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
void initFunc(){
    totalVarNum = get_num_s(aliveSet);
}

void initRegisterAlloc(){
    map_init(&varToR);
    map_init(&stackTableTmp);
    for(int i = 0; i < maxR; i++){
        init_s(&rTable[i]);
    }
}
#define SIZE(x) ((x) * 4)


void spill(int r){
    list varNameList = getStr_s(rTable[r]);
    iterList(varNameList, strItem){
        char* varName = i->val;
        if (findStr_s(aliveSet, varName)){//alive
            int offset = getVarAddress(varName);
            emitInstrStore(fp, SIZE(offset), r);
        }else{
            if (!map_get(&stackTableTmp, varName)){
                esp++;
                map_set(&stackTableTmp, varName, esp);
            }
            emitInstrStore(fp, SIZE(getVarAddress(varName)), r);
        }
    }
}

int Allocate(char* name){
    for(int i = 0; i < maxR; i++){
        if (!get_num_s(rTable[i])){
            return i;
        }
    }
    int mi = 0, result;
    for(int i = 0; i < maxR; i++){
        if (rTimeStap[i] > mi){
            mi = rTimeStap[i];
            result = i;
        }
    }
    spill(result);
    return result;
}

int Ensure(char* name){
    if (map_get(varToR, name)) return *map_get(varToR, name);
    else{
        int result = Allocate(name);
        emitInstrLoad(fp, getVarAddress(name), result);
        return result;
    }
}

void emitInstrLabel(Operand op){
    instr a = getInstr(i_label);
    a->iOp.l1 = op;
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
}
void emitInstrSub
void isConst(Operand op){
    return op->property == o_const;
}
#define FT canTrans = 1;
#define alloc(x) Allocate(getVar(x))
void genObj(TripleExp exp){
    int canTrans = 0;
    Ttype_ type = exp->type;
    if (type == t_label){
            emitInstrLabel(exp->dest);
            FT
    }
    if (type == t_assign){
            if (isPoint(exp->dest)){
                int regx =Allocate(getVar(exp->dest)), regy = Allocate(getVar(exp->src1));
                emitInstrStore(regx, 0, regy);
            }else{
                switch(exp->src1->type){
                    case o_const:
                        int regx = Allocate(getVar(exp->dest));
                        emitInstrLi(regx, exp->src1->u.constInt);
                        FT
                    case o_point:
                        int regx =Allocate(getVar(exp->dest)), regy = Allocate(getVar(exp->src1));
                        emitInstrLoad(regy, 0, regx);
                        FT
                    case o_address:
                        int regx = Allocate(getVar(exp->dest));
                        emitInstrAddi(regx, fp, getVarAddress(getVar(exp->src1)));
                        FT
                    case o_normal:
                        int regx =Allocate(getVar(exp->dest)), regy = Allocate(getVar(exp->src1));
                        emitInstrMove(regx, regy);
                        FT
                    default:
                    assert(0);
                }
            }
            FT
    }
    if (type == t_add){
            int regx = Allocate(getVar(exp->dest));
            if (isConst(exp->src1) && isConst(exp->src2)){
                int val = exp->src1->u.constInt + exp->src2->u.constInt;
                emitInstrLi(regx, val);
                FT
            }else{
                Operand rs = NULL, imm;
                if (isConst(exp->src1)){
                    imm = exp->src1;
                    rs = exp->src2;
                }else if (isConst(exp->src2)){
                    imm = exp->src2;
                    rs = exp->src1;
                }
                if (!rs){
                    int regy = alloc(exp->src1), regz = alloc(exp->src2);
                    emitInstrAdd(regx, regy, regz);
                    FT
                }else{
                    int regy = alloc(rs);
                    emitInstrAddi(regx, regy, imm->u.constInt);
                    FT
                }
            }
    }
    if (type == t_sub){
                int regx = Allocate(getVar(exp->dest));
                Operand rs = NULL, imm;
                if (isConst(exp->src1)){
                    imm = exp->src1;
                    rs = exp->src2;
                }else if (isConst(exp->src2)){
                    imm = exp->src2;
                    rs = exp->src1;
                }
                if (!rs){
                    int regy = alloc(exp->src1), regz = alloc(exp->src2);
                    emitInstrSub(regx, regy, regz);
                }else{
                    int regy = alloc(rs);
                    emitInstrAddi(regx, regy, imm->u.constInt);
                }
    }
}
int genBlockObj(blockInfo block){
    struct blockAliveVarAnalyzeRes res = blockAliveVarAnalyze(i->val);
    varNum = res.varNum;
    list* varTimeStap = res.varTimestamp;
    initRegisterAlloc();
    for(tripleNode i = block->head; i != block->tail; i = i->next){
        TripleExp exp = i->val;
        
    }
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