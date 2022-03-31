#include "world/worldgen/structures/AcaciaTree.h"

void AcaciaTree_Gen(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    for (int hx = 0; hx < 2; hx++){
        switch(hx)
        {
            case 0:
                for (int l = z - 3; l < z + 4; l++)
                {
                    for (int lx = x - 3;  lx < x + 4; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 2, l, Block_LeavesAcacia);
                    }
                }
                break;
            case 1:
                for (int l = z - 1; l < z + 2; l++)
                {
                    for (int lx = x - 1;  lx < x + 2; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 1, l, Block_LeavesAcacia);
                        
                    }
                }
                break;
            default: break;
        }
    }
    Chunk_SetBlock(item.chunk, x-3, y + height - 1, z, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x+3, y + height - 1, z, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x, y + height - 1, z+3, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x, y + height - 1, z-3, Block_LeavesAcacia);
    for (int i = y; i < y + height-1; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, z, Block_LogAcacia);
    }
}