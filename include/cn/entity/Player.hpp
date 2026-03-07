#pragma once

#include <cn/entity/Entity.hpp>
#include <cn/misc/ItemStack.hpp>

namespace CN {
class Player : public CN::Entity {
 public:
  Player();
  ~Player();

  bool pSprinting;
  bool pFlying;
  bool pCrouching;
  CN::ItemStack pInventory[9 * 4];
};
}  // namespace CN