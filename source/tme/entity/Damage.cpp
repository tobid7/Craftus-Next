#include <tme/entity/Damage.hpp>

namespace TME {
void OvertimeDamage(const std::string& cause, int time, Player* plr) {
  if (!plr || time <= 0) {
    return;
  }
  if (cause == "fire" || cause == "poisen") {
    while (time > 0 && plr->hp > 0) {
      plr->hp--;
      time--;
    }
  }
}
}  // namespace TME