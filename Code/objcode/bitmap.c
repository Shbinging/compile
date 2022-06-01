#include "bitmap.h"

bitmap initBitMap(int length){
    int size = (length + 31) / 32 * 32;
    bitmap bm = malloc(sizeof(bitmap_));
    bm->size = size;
    bm->map = malloc(sizeof(int) * size);
    memset(bm->map, 0, sizeof(int) * size);
    return bm;
}

void setBitMap(bitmap bm, int index, int val){
    if (!val){
        bm->map[index / 32] = (bm->map[index / 32] & (~(1U << (index % 32))));
    }else{
        bm->map[index / 32] = (bm->map[index / 32] | (1U << (index % 32)));
    }
} 

void joinBitMap(bitmap destbm, bitmap bm1){
    for(int i = 0; i < destbm->size; i++){
        destbm->map[i] = destbm->map[i] & bm1->map[i]; 
    }
}

void unionBitMap(bitmap destbm, bitmap bm1){
    for(int i = 0; i < destbm->size; i++){
        destbm->map[i] = destbm->map[i] | bm1->map[i]; 
    }
}

int getBitMap(bitmap bm, int index){
    return (bm->map[index / 32] >> (index % 32)) & 1;
}

void setBitMapOne(bitmap bm){
    for(int i = 0; i < bm->size; i++){
        bm->map[i] = 0xffffffffU;
    }
}

void setBitMapZero(bitmap bm){
    memset(bm->map, 0, sizeof(bm->size));
}