#include <cn/Game.hpp>
#include <cn/misc/Crash.hpp>

bool showDebugInfo = true;

// Still required var
GameState gamestate = GameState_Playing;

int main() {
  LOG("Creating Core Engine");
  CN::CoreEngine craftus;
  LOG("Running Core Engine");
  craftus.Run();

  return 0;
}