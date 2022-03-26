#pragma once

#include <world/World.h>

enum Biomes { Biome_Plains, Biome_Desert, Biome_Forest, Biome_Count};
enum Level_ { A, B, C, D, E };

Biomes Biome_GetRandom();
Block Biome_GetBlock(enum Level_ lvl, enum Biomes biome);
int Biome_GetLevelInt(enum Level_ lvl, enum Biomes biome);