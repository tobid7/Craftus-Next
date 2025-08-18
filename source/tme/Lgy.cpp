#include <palladium>
#include <tme/Lgy.hpp>
#include <tme/entity/Damage.hpp>

extern "C" {
#include <entity/Player.h>

void Lgy_OvertimeDamage(const char* cause, int time, void* plr) {
  TME::OvertimeDamage(cause, time, (Player*)plr);
}
u32 Lgy_FastHash(const char* str) { return (u32)PD::Strings::FastHash(str); }
}