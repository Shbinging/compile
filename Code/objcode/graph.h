#ifndef __GRAPH__

#define __GRAPH__

#include"objUtil.h"

typedef struct gNode{
    int to, from, next;
} gNode;
typedef struct cfg_{
    int* head;
    gNode* edgeList;
    int cnt;
    blockItem* val;
} cfg_;
typedef cfg_* cfg;

void initGraph(cfg c, int n, int e);

void addEdge(cfg c, int u, int v);

void buildGraph();

#endif