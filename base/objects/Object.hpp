#pragma once
#include <misc/bvec.hpp>

#define NPI_ARS(_ARR) ((int)(sizeof(_ARR) / sizeof(*(_ARR))))

namespace Base {
class Object {
public:
  virtual void Draw(bvec2i raster_box) = 0;
};
} // namespace Base