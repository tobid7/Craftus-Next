#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int hx = y + height - 4; hx < y + height; hx++){
        for (int l = z - 2; l < z + 3; l++)
        {
            for (int lx = x - 2;  lx < x + 3; lx ++)
            {
                  Chunk_SetBlock(item.chunk, lx, hx, l, Block_Leaves);
            }
        }
    }
    for (int i = y; i < y + height-1; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, z, Block_Log);
    }
    
}
