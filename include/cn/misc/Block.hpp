#pragma once

#include <cn/gfx/texloader.hpp>
#include <palladium>

namespace CN {
class Block {
 public:
  constexpr Block() : pGravity(false), pBlockID(0) {}
  constexpr Block(PD::u16 id, bool gravity = false)
      : pGravity(gravity), pBlockID(id) {}
  ~Block() {}

  bool pGravity;
  PD::u16 pBlockID;
};
}  // namespace CN