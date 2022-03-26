#include "world/worldgen/enum biomes/Biome.h"
#include "world/worldgen/enum biomes/Forest.h"
#include "world/worldgen/enum biomes/Desert.h"
#include "world/worldgen/biomes/Plains.h"

enum Biomes Biome_GetRandom()
{
    int b = 0;
    b = rand() % 50;
    enum Biomes biomex = Biome_Plains;
    switch (b)
    {
        case 0 ... 30:
        biomex = Biome_Plains;
        break;
        case 31 ... 40:
        biomex = Biome_Desert;
        break;
        case 41 ... 50:
        biomex = Biome_Forest;
        break;
        default:
        biomex = Biome_Plains;
        break;
    }
    return biomex;
}
Block Biome_GetBlock(enum Level_ lvl, enum enum Biomes biome)
{
    Block block;
    switch(biome)
    {
        case Biome_Forest:
        switch(lvl)
        {
            case A:
            block = Forest_GetBlockA();
            break;
            case B:
            block = Forest_GetBlockB();
            break;
            case C:
            block = Forest_GetBlockC();
            break;
            case D:
            block = Forest_GetBlockD();
            break;
            case E:
            block = Forest_GetBlockE();
            break;
            default:
            block = Block_Air;
            break;   
        }
        break;
        case Biome_Plains:
        switch(lvl)
        {
            case A:
            block = Plains_GetBlockA();
            break;
            case B:
            block = Plains_GetBlockB();
            break;
            case C:
            block = Plains_GetBlockC();
            break;
            case D:
            block = Plains_GetBlockD();
            break;
            case E:
            block = Plains_GetBlockE();
            break;
            default:
            block = Block_Air;
            break;   
        }
        break;
        case Biome_Desert:
        switch(lvl)
        {
            case A:
            block = Desert_GetBlockA();
            break;
            case B:
            block = Desert_GetBlockB();
            break;
            case C:
            block = Desert_GetBlockC();
            break;
            case D:
            block = Desert_GetBlockD();
            break;
            case E:
            block = Desert_GetBlockE();
            break;
            default:
            block = Block_Air;
            break;   
        }
        break;

        default:
        switch(lvl)
        {
            case A:
            block = Plains_GetBlockA();
            break;
            case B:
            block = Plains_GetBlockB();
            break;
            case C:
            block = Plains_GetBlockC();
            break;
            case D:
            block = Plains_GetBlockD();
            break;
            case E:
            block = Plains_GetBlockE();
            break;
            default:
            block = Block_Air;
            break;   
        }
        break;
    }
    return block;
}
int Biome_GetLevelInt(enum Level_ lvl, enum Biome biome)
{
    int hh = 0;
    switch(biome)
    {
        case Biome_Forest:
        switch(lvl)
        {
            case A:
            hh = Forest_GetLevelA();
            break;
            case B:
            hh = Forest_GetLevelB();
            break;
            case C:
            hh = Forest_GetLevelC();
            break;
            case D:
            hh = Forest_GetLevelD();
            break;
            case E:
            hh = Forest_GetLevelE();
            break;
            default:
            hh = 0;
            break;   
        }
        break;
        case Biome_Plains:
        switch(lvl)
        {
            case A:
            hh = Plains_GetLevelA();
            break;
            case B:
            hh = Plains_GetLevelB();
            break;
            case C:
            hh = Plains_GetLevelC();
            break;
            case D:
            hh = Plains_GetLevelD();
            break;
            case E:
            hh = Plains_GetLevelE();
            break;
            default:
            hh = 0;
            break;   
        }
        break;
        case Biome_Desert:
        switch(lvl)
        {
            case A:
            hh = Desert_GetLevelA();
            break;
            case B:
            hh = Desert_GetLevelB();
            break;
            case C:
            hh = Desert_GetLevelC();
            break;
            case D:
            hh = Desert_GetLevelD();
            break;
            case E:
            hh = Desert_GetLevelE();
            break;
            default:
            hh = 0;
            break;   
        }
        break;

        default:
        switch(lvl)
        {
            case A:
            hh = Plains_GetLevelA();
            break;
            case B:
            hh = Plains_GetLevelB();
            break;
            case C:
            hh = Plains_GetLevelC();
            break;
            case D:
            hh = Plains_GetLevelD();
            break;
            case E:
            hh = Plains_GetLevelE();
            break;
            default:
            hh = 0;
            break;   
        }
        break;
    }
    return hh;
}