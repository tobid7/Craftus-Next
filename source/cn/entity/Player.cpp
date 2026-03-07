#include <cn/entity/Player.hpp>

namespace CN {
Player::Player() {
  std::memset(pInventory, 0x00, sizeof(pInventory));
  pInventory[0] = CN::ItemStack(1, 0, 1);
}
Player::~Player() {}
}  // namespace CN