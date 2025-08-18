#include "world/worldgen/structures/TreeGen.h"

#include <sino/sino.h>

#include "world/worldgen/structures/AcaciaTree.h"
#include "world/worldgen/structures/BirchTree.h"
#include "world/worldgen/structures/OakTree.h"

void TreeGen_GenTree(World* world, int x, int y, int z, enum Trees tree) {
  switch (tree) {
    case Oak:
      OakTree_Gen(world, x, y, z, 5 + rand() % 3);
      break;
    case Birch:
      BirchTree_Gen(world, x, y, z, 6 + rand() % 4);
      break;
    case Acacia:
      AcaciaTree_Gen(world, x, y, z, 5 + rand() % 3);
      break;
    default:
      OakTree_Gen(world, x, y, z, 5 + rand() % 3);
      break;
  }
}
