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
int Forest_GetLevelA(int height)
{
    return 0;
}
int Forest_GetLevelB(int height)
{
    return height -3;
}
int Forest_GetLevelC(int height)
{
    return height -4;
}
int Forest_GetLevelD(int height)
{
    return height - 1;
}
int Forest_GetLevelE(int height)
{
    return height;
}