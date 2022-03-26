#include "world/worldgen/biomes/Forest.h"

void Forest_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
    
}

Block Forest_GetBlockA()
{
    return Block_Stone;
}
Block Forest_GetBlockB()
{
    return Block_Stone;
}
Block Forest_GetBlockC()
{
    return Block_Stone;
}
Block Forest_GetBlockD()
{
    return Block_Dirt;
}
Block Forest_GetBlockE()
{
    return Block_Grass;
}
int Forest_GetLevelA()
{
    return 0;
}
int Forest_GetLevelB()
{
    return 0;
}
int Forest_GetLevelC()
{
    return 0;
}
int Forest_GetLevelD()
{
    return 4;
}
int Forest_GetLevelE()
{
    return 1;
}