#include "obj.h"
#include "objUtil.h"
#include "assert.h"
#include "vector.h"

gen_v(int)
gen_v(instr)

static int isVar(Operand o){
    return o && (o->type == o_var || o->type == o_tmpVar);
} 

static char* getVar(Operand o){
    if (!o) return NULL;
    if (o->type == o_var) return o->u.varPoint->name;
    if (o->type == o_tmpVar) return itoa(o->u.tmpId);
}

#define iterList(x, valType) for(valType i = (x)->head; i; i = i->next)

#define maxR 32

vector_instr objCode;
static void addCode(instr a){
    push_back_v_instr(objCode, a);
}

instr getInstr(enum instrType type){
    instr a = malloc(sizeof(instr_));
    a->iType = type;
}

char* getRegisterName(r_type r){
    char* registerName[] = {"$zero","$at","$v0","$v1","$a0","$a1","$a2","$a3","$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7","$t8","$t9","$s0","$s1","$s2","$s3","$s4","$s5","$s6","$s7","$k0","$k1","$gp","$sp","$fp","$ra"};
    return registerName[r];
}
#define GR(x) getRegisterName(x)
char* getInstrName(enum instrType type){
    char* instrName[] = {"li", "la", "move", "bgt", "bge", "blt", "ble", "label", "add", "addi", "sub", "mul", "div", "mflo", "lw", "sw", "j", "jal", "jr", "beq", "bne", "func"};
    return instrName[type];
}
#define GI(x) getInstrName(x)
#define CC(x,y) GR(code->iOp.x.y)

void printObjCode(instr code){
    switch(code->iType){
        case i_label:
            printf("label%d:", code->iOp.l1.dest);
            break;
        case i_add:
        case i_sub:
        case i_mul:
            printf("%s %s, %s, %s", GI(code->iType), CC(r3, rd), CC(r3, rs), CC(r3, rt));
            break;
        case i_beq:
        case i_bne:
        case i_bgt:
        case i_blt:
        case i_bge:
        case i_ble:
            printf("%s %s, %s, label%d", GI(code->iType), CC(r2l1, rs), CC(r2l1, rt), code->iOp.r2l1.dest);
            break;
        case i_addi:
            printf("addi %s, %s, %d", CC(r2i1, rt), CC(r2i1, rs), code->iOp.r2i1.imm);
            break;
        case i_div:
            printf("div %s, %s", CC(r2, rs), CC(r2, rt));
            break;
        case i_move:
            printf("move %s, %s", CC(r2, rt), CC(r2, rs));
            break;
        case i_li:
            printf("li %s, %d", CC(r1i1, rs), code->iOp.r1i1.imm);
            break;
        case i_mflo:
            printf("mflo %s", CC(r1, rs));
            break;
        case i_j:
            printf("j label%d", code->iOp.l1.dest);
            break;
        case i_jal:
            printf("jal %s", code->iOp.func.funcName);
            break;
        case i_jr:
            printf("jr $ra");
            break;
        case i_lw:
            printf("lw %s, %d(%s)", CC(r2i1, rt), code->iOp.r2i1.imm, CC(r2i1, rs));
            break;
        case i_sw:
            printf("sw %s, %d(%s)", CC(r2i1, rt), code->iOp.r2i1.imm, CC(r2i1, rs));
            break;
        case i_func:
            printf("%s:", code->iOp.func.funcName);
            break;
        default:
            assert(0);
    }
    printf("\n");
}

void printObj(){
    printf(".global main\n");
    printf(".text\n");
    for(int i = 0; i < objCode->length; i++){
        instr code = objCode->a[i];
        printObjCode(code);
    }
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

void emitInstrLabel(int dest){
    instr a = getInstr(i_label);
    a->iOp.l1.dest = dest;
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
// void emitInstrLa(int r, char* varName){
//     instr a = getInstr(i_la);
//     a->iOp.r1l1.rs = r;
//     a->iOp.r1l1.varName = varName;
//     addCode(a);
// }
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
    a->iOp.func.funcName = funcName;
    addCode(a);
}

void emitInstrFunc(char* funcName){
    instr a= getInstr(i_func);
    a->iOp.func.funcName = funcName;
    addCode(a);
}
#define FT canTrans = 1;

static int max(int a, int b){
    return (a >= b) ? a : b;
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

int totalIR;
int funcNum;
TripleExp* ir;
typedef struct blockIR{
    int ir_s, ir_e;
    enum blockIR_type{bt_normal, bt_func, bt_call} type;
} blockIR;
typedef struct funcIR{
    int ir_s, ir_e;
    int blockNum;
    blockIR* blockIRList;
} funcIR;
funcIR* funcList;

int min(int a, int b){
    return a <= b ? a : b;
}

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

static int isBranch(enum Ttype_  type){
    return (t_goto <= type && type <= t_geq) || type == t_call || type == t_return;
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
    return getNum_s(totalVar);
}
set getVarToInt(funcIR func){
    set totalVar;
    init_s(&totalVar);
    for(int i = func.ir_s; i <= func.ir_e; i++){
        if (isVar(ir[i]->src1)) addStr_s(totalVar, getVar(ir[i]->src1));
        if (isVar(ir[i]->src2)) addStr_s(totalVar, getVar(ir[i]->src2));
        if (isVar(ir[i]->dest)) addStr_s(totalVar, getVar(ir[i]->dest));
    }
    //print_set(totalVar);
    return totalVar;
}

bitmap FuncAliveVarAnalyze(funcIR func){
    bitmap res;
    initBitMap(&res, getBlockVarNum());
    set countVar;
    init_s(&countVar);
    for(int i = 0; i < func.blockNum; i++){
        set countVarCurBlock;
        init_s(&countVarCurBlock);
        blockIR* block = func.blockIRList + i;
        for(int j = block->ir_s; j <= block->ir_e; j++){
            if (isVar(ir[j]->src1)) addStr_s(countVarCurBlock, getVar(ir[j]->src1));
            if (isVar(ir[j]->src2)) addStr_s(countVarCurBlock, getVar(ir[j]->src2));
            if (isVar(ir[j]->dest)) addStr_s(countVarCurBlock, getVar(ir[j]->dest));
        }
        iterList(getStr_s(countVarCurBlock), strItem){
            addStr_s(countVar, i->val);
        }
    }
    list varList = getStr_s(totalVar);
    for(strItem q = varList->head; q; q = q->next){
        //printf("%s\n", q->val);
        if (countStr_s(countVar, q->val) > 1){
            printf("%s\n", q->val);
            setBitMap(res, getVarIdByName(q->val), 1);
        }
    }
    return res;
}

vector_int* varsUseTime;
bitmap* varsAliveMap;
bitmap globalAliveVar;
int curIR, baseIR;
int isCalcExp(TripleExp op){
    if (op->type <= t_func || op->type == t_dec) return 0;
    return 1;
}
#define aliveVar(x) setBitMap(aliveMap, x, 1); push_back_v_int(varsUseTime[x], i); 
#define deadVar(x) setBitMap(aliveMap, x, 0);

void blockAliveVarAnalyze(blockIR block){
    int irNum = block.ir_e - block.ir_s + 1;
    varsAliveMap = malloc(sizeof(bitmap) * irNum);
    varsUseTime = malloc(sizeof(vector_int) * getBlockVarNum());
    for(int i = 0; i < irNum; i++) initBitMap(&varsAliveMap[i],  getBlockVarNum());
    for(int i = 0; i < getBlockVarNum(); i++){
        init_v_int(&varsUseTime[i]); 
    }
    bitmap aliveMap = getCopyBitMap(globalAliveVar);
    for(int i = block.ir_e; i >= block.ir_s; i--){
        varsAliveMap[i - baseIR] = getCopyBitMap(aliveMap);
        TripleExp exp = ir[i];
        if (isCalcExp(exp)){
            if (exp->src1 && isVar(exp->src1)){ aliveVar(getVarIdByOp(exp->src1))}//XXX:bug
            if (exp->src2 && isVar(exp->src2)){ aliveVar(getVarIdByOp(exp->src2))}
            if (exp->dest && isVar(exp->dest) && isPoint(exp->dest)) {aliveVar(getVarIdByOp(exp->dest))}
            if (exp->dest && isVar(exp->dest) && !isPoint(exp->dest)){deadVar(getVarIdByOp(exp->dest))}
        }
    }
}

int* varAddress;
int* varAlloc;
vector_int rtoVar[maxR];
int esp;
int frameSize;
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
        init_v_int(&rtoVar[i]);
    }
    
}
int getVarAddr(int id){
    //XXX::新申请
    if (!varAddress[id]) varAddress[id] = ++esp;
    return -varAddress[id] * 4;
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
            while(!isEmpty_v_int(varsUseTime[var]) && top_v_int(varsUseTime[var]) < curIR) pop_v_int(varsUseTime[var]);
            if (!isEmpty_v_int(varsUseTime[var])) mx1 = max(mx1, top_v_int(varsUseTime[var]));
        }
        if (mx1 > mx){
            mx = mx1;
            result = i;
        }
    }
    spill(result);
    return result;
}
int alloc(int var_id);
int ensure(int var_id){
    if (varAlloc[var_id]) return varAlloc[var_id];
    int result = alloc(var_id);
    emitInstrLoad(fp, getVarAddr(var_id), result);
    return result;
}

int ensureOp(Operand op){
    assert(isVar(op));
    return ensure(getVarIdByOp(op));
}

void freeVar(int var_id){
    if (!getBitMap(varsAliveMap[curIR - baseIR], var_id)){
        if (varAlloc[var_id]){
            del_v_int(rtoVar[varAlloc[var_id]], var_id);
        }
        varAlloc[var_id] = 0;
    }
}

void freeOp(Operand op){
    assert(isVar(op));
    freeVar(getVarIdByOp(op));
}

int alloc(int var_id){
    int result = allocate();
    varAlloc[var_id] = result;
    rtoVar[result]->length = 0;
    push_back_v_int(rtoVar[result], var_id);
    return result;
}
int allocOp(Operand op){
    assert(isVar(op));
    return alloc(getVarIdByOp(op));
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
                if (exp->src1->type == o_const){
                        emitInstrLi(regx, exp->src1->u.constInt);
                        FT
                }else{
                    switch(exp->src1->property){
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
            }
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


void genFuncBlock(blockIR block){
    TripleExp exp = ir[block.ir_s];
    assert(exp->type == t_func);
    emitInstrFunc(exp->dest->u.funcPoint->name);
    emitInstrAddi(sp, sp, -frameSize);
    emitInstrStore(sp, frameSize -4, ra);
    emitInstrStore(fp, frameSize - 8, sp);
    emitInstrAddi(fp, sp, frameSize);
    int s = 0;
    for(curIR = block.ir_s + 1; curIR <= block.ir_e; curIR++){
        assert(ir[curIR]->type == t_param);
        exp = ir[curIR];
        assert(exp->dest && isVar(exp->dest));
        if (s < 4){
            emitInstrStore(fp, getVarAddr(getVarIdByOp(exp->dest)), a0 + s);
        }else{
            emitInstrLoad(fp, 4 * (s - 4), a0);
            emitInstrStore(fp, getVarAddr(getVarIdByOp(exp->dest)), a0);
        }
        s++;
    }
}

void genNormalBlock(blockIR block){
    baseIR = block.ir_s;
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
            emitInstrStore(sp, (s - 4)* 4, getVarAddr(getVarIdByOp(ir[curIR]->src1)));
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
        printf("block %d\n", i);
        if (i == 2){
            printf("ok");
        }
        enum Ttype_ type = ir[func.blockIRList[i].ir_s]->type;
        if (type == t_call || type == t_arg) genCallBlock(func.blockIRList[i]);
        else genNormalBlock(func.blockIRList[i]);
    }
}

void genProgramOBJ(list func){
    getIR(func->head);
    splitIR();
    init_v_instr(&objCode);
    for(int i = 0; i < funcNum; i++){
        genFuncOBJ(funcList[i]);
    }
    printObj();
}