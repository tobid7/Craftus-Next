#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int l = z - 2; l < z + 2; l++)
    {
        for (int lx = x - 2;  lx < x + 2; lx ++)
        {
              Chunk_SetBlock(item.chunk, lx, i, l, Block_Leaves);
        }
    }
    for (int i = y; i < y + height-1; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, z, Block_Log);
    }
    
}
