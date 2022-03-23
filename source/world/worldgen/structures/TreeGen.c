#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int i = y; i < y + height-2; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, z, Block_Log);
    }
    
}