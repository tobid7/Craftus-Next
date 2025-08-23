#pragma once

#include <palladium>
#include <cn/gfx/texloader.hpp>

namespace TME {
class Block {
 public:
  constexpr Block() : pGravity(false), pBlockID(0) {}
  constexpr Block(PD::u16 id, bool gravity = false)
      : pGravity(gravity), pBlockID(id) {}
  ~Block() {}

  bool pGravity;
  PD::u16 pBlockID;
};
}  // namespace TME