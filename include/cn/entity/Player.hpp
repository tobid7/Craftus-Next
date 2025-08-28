#pragma once

#include <cn/entity/Entity.hpp>
#include <cn/misc/ItemStack.hpp>

namespace CN {
class Player : public TME::Entity {
 public:
  Player();
  ~Player();

  bool pSprinting;
  bool pFlying;
  bool pCrouching;
  TME::ItemStack pInventory[9 * 4];
};
}  // namespace CN