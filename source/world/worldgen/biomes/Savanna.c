#include "world/worldgen/biomes/Savanna.h"

void Savanna_Gen(WorkQueue* queue, WorkerItem item, int xpos, int zpos)
{
   
}


Block Savanna_GetBlockA()
{
    return Block_Stone;
}
Block Savanna_GetBlockB()
{
    return Block_Stone;
}
Block Savanna_GetBlockC()
{
    return Block_Stone;
}
Block Savanna_GetBlockD()
{
    return Block_Dirt;
}
Block Savanna_GetBlockE()
{
    return Block_GrassAcacia;
}
int Savanna_GetLevelA(int height)
{
    return 0;
}
int Savanna_GetLevelB(int height)
{
    return height -3;
}
int Savanna_GetLevelC(int height)
{
    return height -4;
}
int Savanna_GetLevelD(int height)
{
    return height - 1;
}
int Savanna_GetLevelE(int height)
{
    return height;
}