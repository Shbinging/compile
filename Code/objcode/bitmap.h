#ifndef __bitmap__
#define __bitmap__

typedef struct bitmap_{
    unsigned int* map;
    int size;
} bitmap_;
typedef bitmap_* bitmap;

void initBitMap(bitmap* bmm, int length);
void setBitMap(bitmap bm, int index, int val);
void joinBitMap(bitmap destbm, bitmap bm1);
void unionBitMap(bitmap destbm, bitmap bm1);
int getBitMap(bitmap bm, int index);
void setBitMapOne(bitmap bm);
void setBitMapZero(bitmap bm);
bitmap getCopyBitMap(bitmap src);
void printBitMap(bitmap bm);
#endif
