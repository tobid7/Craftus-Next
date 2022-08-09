#pragma once
#include "world/World.h"

enum Trees
{
    Oak,
    Birch,
    Acacia
};

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item, int x, int y, int z, enum Trees tree);