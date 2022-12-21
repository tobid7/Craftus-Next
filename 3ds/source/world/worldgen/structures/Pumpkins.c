#include "world/worldgen/structures/Pumpkins.h"


void Pumpkins_Gen(WorkQueue* queue, WorkerItem item)
{
    for (int i = 0; i < 8; i++)
    {
        int xx = 0;
        int zz = 0;
        xx = random_number(0, 17);
        zz = random_number(0, 17);
        int y = (int)Chunk_GetHeightMap(item.chunk, xx, zz);
        Chunk_SetBlock(item.chunk, random_number(0, 16), y, random_number(0, 16), Block_Pumpkin);
    }
}