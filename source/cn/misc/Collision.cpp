#include <cn/misc/Collision.hpp>

namespace TME {
bool CollisionBox::Intersect(const CollisionBox& other, int ignore,
                             PD::fvec3& ncoll, float& dcoll, int& fcoll) {
  // the normal of each face.
  static const PD::fvec3 faces[6] = {
      PD::fvec3(-1, 0, 0),  // 'left' face normal (-x direction)
      PD::fvec3(1, 0, 0),   // 'right' face normal (+x direction)
      PD::fvec3(0, -1, 0),  // 'bottom' face normal (-y direction)
      PD::fvec3(0, 1, 0),   // 'top' face normal (+y direction)
      PD::fvec3(0, 0, -1),  // 'far' face normal (-z direction)
      PD::fvec3(0, 0, 1),   // 'near' face normal (+z direction)
  };

  // distance of collided box to the face.
  float distances[6] = {
      // distance of box 'b' to face on 'left' side of 'a'.
      (other.pMax.x - pMin.x),
      // distance of box 'b' to face on 'right' side of 'a'.
      (pMax.x - other.pMin.x),
      // distance of box 'b' to face on 'bottom' side of 'a'.
      (other.pMax.y - pMin.y),
      // distance of box 'b' to face on 'top' side of 'a'.
      (pMax.y - other.pMin.y),
      // distance of box 'b' to face on 'far' side of 'a'.
      (other.pMax.z - pMin.z),
      // distance of box 'b' to face on 'near' side of 'a'.
      (pMax.z - other.pMin.z),
  };

  // scan each face, make sure the box intersects,
  // and take the face with least amount of intersection
  // as the collided face.

  for (int i = 0; i < 6; i++) {
    // box does not intersect face. So boxes don't intersect at all.

    if (distances[i] < 0.0f) return false;

    if (ignore & (1 << i)) continue;

    // face of least intersection depth. That's our candidate.

    if ((i == 0) || (distances[i] < dcoll)) {
      fcoll = i;
      ncoll = faces[i];
      dcoll = distances[i];
    }
  }
  return true;
}

}  // namespace TME