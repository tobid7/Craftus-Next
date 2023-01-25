#pragma once
#include <stdint.h>

namespace Base {
struct WorldVertex {
  float position[3];
  float texcoords[2];
  float color[3];
};

struct UiSquare {
  float position[2];
  float texcoords[2];
  float color[4];
};

} // namespace Base