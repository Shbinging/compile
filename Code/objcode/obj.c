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
int espFrame;
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


void initRegisterAlloc(){
    map_init(&varToR);
    map_init(&stackTableTmp);
    esp = espFrame;
    for(int i = 0; i < maxR; i++){
        init_s(&rTable[i]);
        rTimeStap[i] = 0;
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
    int mi = 0, result = 0;
    for(int i = 0; i < maxR; i++){
        if (rTimeStap[i] >= mi){
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
    a->iOp.f = funcName;
    addCode(a);
}
void isConst(Operand op){
    return op->property == o_const;
}
#define FT canTrans = 1;
#define alloc(x) Allocate(getVar(x))
void genObjNormal(TripleExp exp){
    int canTrans = 0;
    enum Ttype_ type = exp->type;
    if (type == t_label){
            emitInstrLabel(exp->dest->u.labelId);
            FT
    }
    if (type == t_assign){
            if (isPoint(exp->dest)){
                int regx = alloc(exp->dest), regy = alloc(exp->src1);
                emitInstrStore(regx, 0, regy);
            }else{
                int regx = alloc(exp->dest);
                switch(exp->src1->type){
                    case o_const:
                        emitInstrLi(regx, exp->src1->u.constInt);
                        FT
                    case o_point:
                        emitInstrLoad(alloc(exp->src1), 0, regx);
                        FT
                    case o_address:
                        emitInstrAddi(regx, fp, getVarAddress(getVar(exp->src1)));
                        FT
                    case o_normal:
                        emitInstrMove(regx, alloc(exp->src1));
                        FT
                    default:
                    assert(0);
                }
            }
            FT
    }
    if (type == t_add){
        int regx = alloc(exp->dest), regy = alloc(exp->src1), regz = alloc(exp->src2);
        emitInstrAdd(regx, regy, regz);
    }
    if (type == t_sub){
        int regx = alloc(exp->dest), regy = alloc(exp->src1), regz = alloc(exp->src2);
        emitInstrSub(regx, regy, regz);      
    }
    if (type == t_star){
        int regx = alloc(exp->dest), regy = alloc(exp->src1), regz = alloc(exp->src2);
        emitInstrStar(regx, regy, regz);  
    }
    if (type == t_div){
        int regx = alloc(exp->dest), regy = alloc(exp->src1), regz = alloc(exp->src2);
        emitInstrDiv(regy, regz);  
        emitInstrMflo(regx);
    }
    if (type == t_goto){
        emitInstrGoto(exp->dest->u.labelId);
    }
    if (type == t_return){
        int regx = alloc(exp->dest);
        emitInstrMove(v0, regx);
        emitInstrJr();
    }
    if (type == t_eq){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_eq);
    }
    if (type == t_neq){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_neq);
    }
    if (type == t_g){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_g);
    }
    if (type == t_geq){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_geq);
    }
    if (type == t_l){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
        emitCondGoto(regx, regy, exp->dest->u.labelId, t_l);
    }
    if (type == t_leq){
        int regx = alloc(exp->src1), regy = alloc(exp->src2);
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
            emitInstrMove(alloc(exp->dest), v0); //XXX:是否存在指针的情况？
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

list genOBJ(list funcBlock){
    list obj;
    createList(&obj);
    iterList(funcBlock, funcNode){
        list objCode;
        createList(&objCode);
        genFunc(i->val->head);
        append_list(obj, objCode);
    }
    return obj;
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