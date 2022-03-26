#include "world/worldgen/biomes/Desert.h"

void Desert_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
   
}


Block Desert_GetBlockA()
{
    return Block_Stone;
}
Block Desert_GetBlockB()
{
    return Block_Stone;
}
Block Desert_GetBlockC()
{
    return Block_Stone;
}
Block Desert_GetBlockD()
{
    return Block_Sandstone;
}
Block Desert_GetBlockE()
{
    return Block_Sand;
}
int Desert_GetLevelA(int height)
{
    return 0;
}
int Desert_GetLevelB(int height)
{
    return 0;
}
int Desert_GetLevelC(int height)
{
    return 0;
}
int Desert_GetLevelD(int height)
{
    return height - 24;
}
int Desert_GetLevelE(int height)
{
    return height - 4;
}