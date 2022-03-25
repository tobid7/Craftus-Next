#include "world/worldgen/structures/TreeGen.h"
#include "world/worldgen/structures/OakTree.h"
#include "world/worldgen/structures/BirchTree.h"
#include <sino/sino.h>


void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, enum Trees tree)
{
    srand(time(NULL));
    switch (tree)
    {
    case Oak:
        OakTree_Gen(queue, item, x, y, z, 5 + rand() % 3);
        break;
    case Birch:
        BirchTree_Gen(queue, item, x, y, z, 6 + rand() % 4);
        break;
    default:
        OakTree_Gen(queue, item, x, y, z, 5 + rand() % 3);
        break;
    }
}
