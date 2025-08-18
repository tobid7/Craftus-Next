#include "world/worldgen/structures/BirchTree.h"

void BirchTree_Gen(World* world, int x, int y, int z, int height) {
  for (int hx = 0; hx < 4; hx++) {
    switch (hx) {
      case 0:
        for (int l = z - 2; l < z + 3; l++) {
          for (int lx = x - 2; lx < x + 3; lx++) {
            World_SetBlock(world, lx, y + height - 4, l, Block_BirchLeaves);
          }
        }
        break;
      case 1:
        for (int l = z - 2; l < z + 3; l++) {
          for (int lx = x - 2; lx < x + 3; lx++) {
            World_SetBlock(world, lx, y + height - 3, l, Block_BirchLeaves);
          }
        }
        break;
      case 2:
        for (int l = z - 1; l < z + 2; l++) {
          for (int lx = x - 1; lx < x + 2; lx++) {
            World_SetBlock(world, lx, y + height - 2, l, Block_BirchLeaves);
          }
        }
        break;
      case 3:
        for (int l = z - 0; l < z + 1; l++) {
          for (int lx = x - 0; lx < x + 1; lx++) {
            World_SetBlock(world, lx, y + height - 1, l, Block_BirchLeaves);
            World_SetBlock(world, lx - 1, y + height - 1, l, Block_BirchLeaves);
            World_SetBlock(world, lx + 1, y + height - 1, l, Block_BirchLeaves);
            World_SetBlock(world, lx, y + height - 1, l + 1, Block_BirchLeaves);
            World_SetBlock(world, lx, y + height - 1, l - 1, Block_BirchLeaves);
          }
        }
        break;
      default:
        break;
    }
  }

  for (int i = y; i < y + height - 1; i++) {
    World_SetBlock(world, x, i, z, Block_BirchLog);
  }
}