#include "world/worldgen/biomes/Biome.h"
#include "world/worldgen/biomes/Forest.h"
#include "world/worldgen/biomes/Desert.h"
#include "world/worldgen/biomes/Plains.h"
#include "world/worldgen/biomes/Savanna.h"

int b = 0;

enum Biomes Biome_GetRandom()
{
    b = random_number(0, 30);
    //b = 55;
    enum Biomes biomex = Biome_Plains;
    switch (b)
    {
        case 0 ... 30:
        biomex = Biome_Plains;
        break;
        case 31 ... 35:
        biomex = Biome_Desert;
        break;
        case 36 ... 50:
        biomex = Biome_Forest;
        break;
        case 51 ... 60:
        biomex = Biome_Savanna;
        break;
        default:
        biomex = Biome_Plains;
        break;
    }
    return biomex;
}
Block Biome_GetBlock(enum Level_ lvl, enum Biomes biome)
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
        case Biome_Savanna:
        switch(lvl)
        {
            case A:
            block = Savanna_GetBlockA();
            break;
            case B:
            block = Savanna_GetBlockB();
            break;
            case C:
            block = Savanna_GetBlockC();
            break;
            case D:
            block = Savanna_GetBlockD();
            break;
            case E:
            block = Savanna_GetBlockE();
            break;
            default:
            block = Block_Air;
            break;   
        }

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
int Biome_GetLevelInt(enum Level_ lvl, enum Biomes biome, int height)
{
    int hh = 0;
    switch(biome)
    {
        case Biome_Forest:
        switch(lvl)
        {
            case A:
            hh = Forest_GetLevelA(height);
            break;
            case B:
            hh = Forest_GetLevelB(height);
            break;
            case C:
            hh = Forest_GetLevelC(height);
            break;
            case D:
            hh = Forest_GetLevelD(height);
            break;
            case E:
            hh = Forest_GetLevelE(height);
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
            hh = Plains_GetLevelA(height);
            break;
            case B:
            hh = Plains_GetLevelB(height);
            break;
            case C:
            hh = Plains_GetLevelC(height);
            break;
            case D:
            hh = Plains_GetLevelD(height);
            break;
            case E:
            hh = Plains_GetLevelE(height);
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
            hh = Desert_GetLevelA(height);
            break;
            case B:
            hh = Desert_GetLevelB(height);
            break;
            case C:
            hh = Desert_GetLevelC(height);
            break;
            case D:
            hh = Desert_GetLevelD(height);
            break;
            case E:
            hh = Desert_GetLevelE(height);
            break;
            default:
            hh = 0;
            break;   
        }
        break;
        case Biome_Savanna:
        switch(lvl)
        {
            case A:
            hh = Savanna_GetLevelA(height);
            break;
            case B:
            hh = Savanna_GetLevelB(height);
            break;
            case C:
            hh = Savanna_GetLevelC(height);
            break;
            case D:
            hh = Savanna_GetLevelD(height);
            break;
            case E:
            hh = Savanna_GetLevelE(height);
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
            hh = Plains_GetLevelA(height);
            break;
            case B:
            hh = Plains_GetLevelB(height);
            break;
            case C:
            hh = Plains_GetLevelC(height);
            break;
            case D:
            hh = Plains_GetLevelD(height);
            break;
            case E:
            hh = Plains_GetLevelE(height);
            break;
            default:
            hh = 0;
            break;   
        }
        break;
    }
    return hh;
}

bool Biome_HasTrees(enum Biomes biome)
{
    bool has = false;
    switch(biome)
    {
        case Biome_Desert:
        has = false;
        break;
        case Biome_Plains:
        has = true;
        break;
        case Biome_Forest:
        has = true;
        break;
        case Biome_Savanna:
        has = true;
        break;
        default:
        has = false;
        break;
    }
    return has;
}

enum Trees GetTreeType(enum Biomes biome)
{
    enum Trees tree = 0;
     int al = 0;
    switch(biome)
    {
        case Biome_Desert:
        tree = 0;
        break;
        case Biome_Plains:
        al = random_number(0, 20);
				if (al > 7)
				{
					tree = Oak;
				}
				else {
					tree = Birch;
				}
        break;
        case Biome_Forest:
        al = random_number(0, 20);
				if (al > 7)
				{
					tree = Oak;
				}
				else {
					tree = Birch;
				}
        break;
        case Biome_Savanna:
        tree = Acacia;
        break;
        default:
        tree = 0;
        break;
    }
    return tree;
}