#include "world/worldgen/structures/TreeGen.h"
#include <sino/sino.h>

void TreeGen_GenTree(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int hx = 0; hx < 4; hx++){
        switch(hx)
        {
            case 0:
                for (int l = z - 2; l < z + 3; l++)
                {
                    for (int lx = x - 2;  lx < x + 3; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 4, l, Block_Leaves);
                    }
                }
                break;
            case 1:
                for (int l = z - 2; l < z + 3; l++)
                {
                    for (int lx = x - 2;  lx < x + 3; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 3, l, Block_Leaves);
                    }
                }
                break;
            case 2:
                for (int l = z - 1; l < z + 2; l++)
                {
                    for (int lx = x - 1;  lx < x + 2; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 2, l, Block_Leaves);
                    }
                }
                break;
            case 3:
                for (int l = z - 0; l < z + 1; l++)
                {
                    for (int lx = x - 0;  lx < x + 1; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 1, l, Block_Leaves);
                    }
                }
                break;
            default: break;
        }
        
    
    for (int i = y; i < y + height-1; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, z, Block_Log);
    }
    
}
