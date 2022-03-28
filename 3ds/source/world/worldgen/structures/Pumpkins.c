#include "world/worldgen/structures/Pumpkins.h"


void Pumpkins_Gen(WorkQueue* queue, WorkerItem item)
{
    for (int i = 0; i < 8; i++)
    {
        int xx = 0;
        int zz = 0;
        xx = rand() % 17;
        zz = rand() % 17;
        int y = (int)Chunk_GetHeightMap(item.chunk, xx, zz);
        Chunk_SetBlock(item.chunk, rand() % 16, y, rand() % 16, Block_Pumpkin);
    }
}