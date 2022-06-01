#include "graph.h"

void initGraph(cfg c, int n, int e){
    c->head = malloc(sizeof(int) * (n + 7));
    c->edgeList = malloc(sizeof(gNode) * (e + 7));
    c->cnt = 0;
    c->val = malloc(sizeof(blockItem)* (n + 1));
    memset(c->head, 0, sizeof(int) * (n + 7));
}

void addEdge(cfg c, int u, int v){
    c->cnt++;
    c->edgeList[c->cnt].next = c->head[u];
    c->edgeList[c->cnt].to = v;
    c->head[u] = c->cnt;
}


