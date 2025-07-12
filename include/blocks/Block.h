#pragma once

#include <stdbool.h>
#include <stdint.h>

#include <world/Direction.h>

typedef uint8_t Block;

enum { Block_Air,
    Block_Stone,
    Block_Dirt,
    Block_Grass,
    Block_Cobblestone,
    Block_Sand,
    Block_Log,
    Block_Gravel,
    Block_Leaves,
    Block_Glass,
   	Block_Stonebrick,
    Block_Brick,
    Block_Planks,
    Block_Wool,
    Block_Bedrock,
    Block_Coarse,
    Block_Door_Top,
   	Block_Door_Bottom,
   	Block_Snow_Grass,
   	Block_Snow,
   	Block_Obsidian,
   	Block_Netherrack,
   	Block_Sandstone,
   	Block_Smooth_Stone,
   	Block_Crafting_Table,
   	Block_Grass_Path,
   	Block_Water,
   	Block_Lava,
	Block_Iron_Ore,
	Block_Coal_Ore,
	Block_Diamond_Ore,
	Block_Gold_Ore,
	Block_Emerald_Ore,
	Block_Gold_Block,
	Block_Diamond_Block,
	Block_Coal_Block,
	Block_Iron_Block,
	Block_Emerald_Block,
	Block_Furnace,
	Block_Mycel,
	Block_Pumpkin,
	Block_PumpkinFace,
	Block_PumpkinFaceLamp,
	Block_BirchPlanks,
	Block_BirchLog,
	Block_BirchLeaves,
	Block_BeeNest,
	Block_BeeNestHoney,
	Block_Melon,
	Block_LeavesAcacia,
	Block_LogAcacia,
	Block_PlanksAcacia,
	Block_GrassAcacia,
	Blocks_Count
};

void Block_Init();
void Block_Deinit();

void* Block_GetTextureMap();

void Block_GetTexture(Block block, Direction direction, uint8_t metadata, int16_t* out_uv);

void Block_GetColor(Block block, uint8_t metadata, Direction direction, uint8_t out_rgb[]);

bool Block_Opaque(Block block, uint8_t metadata);

extern const char* BlockNames[Blocks_Count];
