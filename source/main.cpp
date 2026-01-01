#include <cn/Game.hpp>

bool showDebugInfo = true;

// Still required var
GameState gamestate = GameState_Playing;

int main() {
  TME::CoreEngine craftus;
  craftus.Run();

  return 0;
}