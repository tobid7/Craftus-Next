#pragma once

#include <3ds.h>

namespace CN {
// Lets use floats inestead
struct WorldVertex {
  float xyz[3];
  float uv[2];
  float rgb[3];
};

struct GuiVertex {
  float xyz[3];
  float uvc[3];
};
}  // namespace CN