#ifndef _IROPTI_

#define _IROPTI_

#include "ir.h"
void constLiminate(list funcBlock);
void deadVarLiminate(list funcBlock);
void getOptIr(list funcBlock);
#endif