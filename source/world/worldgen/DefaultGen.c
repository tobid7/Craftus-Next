#include <sino/sino.h>
#include <stdio.h>
#include <time.h>
#include <world/worldgen/DefaultGen.h>

#include "misc/noise.h"
#include "world/worldgen/biomes/Biome.h"
#include "world/worldgen/structures/Pumpkins.h"
#include "world/worldgen/structures/TreeGen.h"

void DefaultGen_Init(DefaultGen *gen, World *world) { gen->world = world; }
int height = 0;

void DefaultGen_Generate(WorkQueue *queue, WorkerItem item, void *this) {
  // Lets actually use the this param
  DefaultGen *gen = (DefaultGen *)this;
  uint64_t seed = gen->world->genSettings.seed;

  for (int x = 0; x < CHUNK_SIZE; x++) {
    for (int z = 0; z < CHUNK_SIZE; z++) {
      float px = (float)(x + item.chunk->x * CHUNK_SIZE);
      float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

      enum Biomes biome = Biome_GetAt(px, pz, seed);

      const int smeasClusterSize = 8;
      const int smeasChunkHeight = 16;
      float base = sino_2d(px * 0.001f, pz * 0.001f) * 32.0f;
      float hills = sino_2d(px * 0.01f, pz * 0.01f) * 8.0f;
      float detail = sino_2d(px * 0.05f, pz * 0.05f) * 2.0f;

      height = 60 + (int)(base + hills + detail);

      // for (int y = 0; y < height - 3; y++) {
      //	Chunk_SetBlock(item.chunk, x, y, z, Block_Stone);
      // }
      for (int y = 0; y < Biome_GetLevelInt(A, biome, height); y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(A, biome));
      }
      for (int y = Biome_GetLevelInt(A, biome, height);
           y < Biome_GetLevelInt(B, biome, height); y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(B, biome));
      }
      for (int y = Biome_GetLevelInt(B, biome, height);
           y < Biome_GetLevelInt(C, biome, height); y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(C, biome));
      }
      for (int y = Biome_GetLevelInt(C, biome, height);
           y < Biome_GetLevelInt(D, biome, height); y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(D, biome));
      }
      for (int y = Biome_GetLevelInt(D, biome, height);
           y < Biome_GetLevelInt(E, biome, height); y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(E, biome));
      }

      for (int bd = 0; bd < 1 + random_number(0, 3); bd++) {
        Chunk_SetBlock(item.chunk, x, bd, z, Block_Bedrock);
      }
    }
  }
}
