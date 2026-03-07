#pragma once

#include <palladium>

namespace CN {
class CollisionBox {
 public:
  CollisionBox() {}
  CollisionBox(float x, float y, float z, float w, float h, float d) {
    pMin = PD::fvec3(x, y, z);
    pMax = PD::fvec3(x + w, y + h, z + d);
  }
  CollisionBox(PD::fvec3 min, PD::fvec3 max) {
    pMin = min;
    pMax = max;
  }
  ~CollisionBox() = default;

  bool Contains(float x, float y, float z) {
    return x >= pMin.x && y >= pMin.y && z >= pMin.z && x < pMax.x &&
           y < pMax.y && z < pMax.z;
  }

  bool Intersect(const CollisionBox& other, int ignore, PD::fvec3& ncoll,
                 float& dcoll, int& fcoll);

  PD::fvec3 pMin;
  PD::fvec3 pMax;
};
}  // namespace CN