#pragma once

#include <string>

extern "C" {
#include <entity/Player.h>
}

namespace TME {
void OvertimeDamage(const std::string& cause, int time, Player* plr);
}