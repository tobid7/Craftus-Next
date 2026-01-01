#include <sino/sino.h>
#include <stdio.h>
#include <time.h>
#include <world/worldgen/DefaultGen.h>

void DefaultGen_Init(DefaultGen *gen, World *world) { gen->world = world; }
int height = 0;

/** Lets keep it small for nows */
Block Biome_GetBlock(int y, int max_y) {
  Block ret = Block_Air;
  if (y == max_y - 1) {
    ret = Block_Grass;
  } else if (y > max_y - 4 && y < max_y - 1) {
    ret = Block_Dirt;
  } else if (y > 0) {
    ret = Block_Stone;
  }
  return ret;
}

void DefaultGen_Generate(WorkQueue *queue, WorkerItem item, void *this) {
  // Lets actually use the this param
  DefaultGen *gen = (DefaultGen *)this;
  uint64_t seed = gen->world->genSettings.seed;

  for (int x = 0; x < CHUNK_SIZE; x++) {
    for (int z = 0; z < CHUNK_SIZE; z++) {
      float px = (float)(x + item.chunk->x * CHUNK_SIZE);
      float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

      const int smeasClusterSize = 8;
      const int smeasChunkHeight = 16;
      float base = sino_2d(px * 0.001f, pz * 0.001f) * 32.0f;
      float hills = sino_2d(px * 0.01f, pz * 0.01f) * 8.0f;
      float detail = sino_2d(px * 0.05f, pz * 0.05f) * 2.0f;

      height = 60 + (int)(base + hills + detail);
      for (int y = 0; y < height; y++) {
        Chunk_SetBlock(item.chunk, x, y, z, Biome_GetBlock(y, height));
      }

      for (int bd = 0; bd < 1 + random_number(0, 3); bd++) {
        Chunk_SetBlock(item.chunk, x, bd, z, Block_Bedrock);
      }
    }
  }
}
