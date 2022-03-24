#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int hx = y + height - 4; hx < y + height; hx++){
        switch(hx)
        {
            case y + height - 4:
                for (int l = z - 2; l < z + 3; l++)
                {
                    for (int lx = x - 2;  lx < x + 3; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, hx, l, Block_Leaves);
                    }
                }
                break;
            case y + height - 3:
                for (int l = z - 2; l < z + 3; l++)
                {
                    for (int lx = x - 2;  lx < x + 3; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, hx, l, Block_Leaves);
                    }
                }
                break;
            case y + height - 2:
                for (int l = z - 1; l < z + 2; l++)
                {
                    for (int lx = x - 1;  lx < x + 2; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, hx, l, Block_Leaves);
                    }
                }
                break;
            case y + height - 1:
                for (int l = z - 0; l < z + 1; l++)
                {
                    for (int lx = x - 0;  lx < x + 1; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, hx, l, Block_Leaves);
                    }
                }
                break;
            default: break;
        }
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
