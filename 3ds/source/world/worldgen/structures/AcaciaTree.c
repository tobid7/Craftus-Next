#include "world/worldgen/structures/AcaciaTree.h"

void AcaciaTree_Gen(WorkQueue* queue, WorkerItem item,int x, int y, int z, int height)
{
    int newz = z;
    for (int i = y; i < y + height-1; i++)
    {
        Chunk_SetBlock(item.chunk, x, i, newz, Block_LogAcacia);    
        if (i > 3 && newz == z) newz+1;
    }
    for (int hx = 0; hx < 2; hx++){
        switch(hx)
        {
            case 0:
                for (int l = newz - 3; l < newz + 4; l++)
                {
                    for (int lx = x - 3;  lx < x + 4; lx ++)
                    {
                        Chunk_SetBlock(item.chunk, lx, y + height - 2, l, Block_LeavesAcacia);
                    }
                }
                break;
            case 1:
                for (int l = newz - 1; l < newz + 2; l++)
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
    Chunk_SetBlock(item.chunk, x-2, y + height - 1, newz, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x+2, y + height - 1, newz, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x, y + height - 1, newz+2, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x, y + height - 1, newz-2, Block_LeavesAcacia);
    Chunk_SetBlock(item.chunk, x-2, y + height - 2, newz-3, Block_Air);
    Chunk_SetBlock(item.chunk, x-2, y + height - 2, newz+3, Block_Air);
    Chunk_SetBlock(item.chunk, x+2, y + height - 2, newz-3, Block_Air);
    Chunk_SetBlock(item.chunk, x+2, y + height - 2, newz+3, Block_Air);
    Chunk_SetBlock(item.chunk, x, y + height - 2, newz, Block_LogAcacia);
    
}