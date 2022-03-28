#include "world/worldgen/biomes/Plains.h"

void Plains_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
   
}


Block Plains_GetBlockA()
{
    return Block_Stone;
}
Block Plains_GetBlockB()
{
    return Block_Stone;
}
Block Plains_GetBlockC()
{
    return Block_Stone;
}
Block Plains_GetBlockD()
{
    return Block_Dirt;
}
Block Plains_GetBlockE()
{
    return Block_Grass;
}
int Plains_GetLevelA(int height)
{
    return 0;
}
int Plains_GetLevelB(int height)
{
    return height -3;
}
int Plains_GetLevelC(int height)
{
    return height -4;
}
int Plains_GetLevelD(int height)
{
    return height - 1;
}
int Plains_GetLevelE(int height)
{
    return height;
}