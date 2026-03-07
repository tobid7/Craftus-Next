#pragma once

#include <cn/misc/Direction.hpp>
#include <palladium>

namespace CN {
class Raycast {
 public:
  Raycast() {}
  ~Raycast() {}

  static Raycast Cast(void* world, PD::fvec3 pos, PD::fvec3 dir);

  PD::ivec3 pPos;
  float pDistSq;
  Direction pDir;
};
}  // namespace CN