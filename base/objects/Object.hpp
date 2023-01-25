#pragma once
#include <misc/bvec.hpp>

namespace Base {
class Object {
public:
  virtual void Draw(bvec2i raster_box) = 0;
};
} // namespace Base