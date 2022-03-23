#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int z, int height)
{
    for (size_t i = 0; i < height; i++)
    {
        Chunk_SetBlock(item.chunk, x, height, z, Block_Log);
    }
    
}