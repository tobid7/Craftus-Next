#pragma once

#ifdef __3DS__
#include <3ds.h>
#include <citro3d.h>
#else
struct C3D_FVec {};
struct C3D_Mtx {};
#endif

extern "C" {
#include <entity/Player.h>
}
#include <palladium>

namespace CN {
/**
 * Do we need this ?
 * IDK
 */
enum FrustumPlanes {
  Frustum_Near = 0,
  Frustum_Right,
  Frustum_Left,
  Frustum_Top,
  Frustum_Bottom,
  Frustum_Far,

  FrustumPlanes_Count
};

enum FrustumCorners {
  Frustum_NearBottomLeft = 0,
  Frustum_NearBottomRight,
  Frustum_NearTopLeft,
  Frustum_NearTopRight,
  Frustum_FarBottomLeft,
  Frustum_FarBottomRight,
  Frustum_FarTopLeft,
  Frustum_FarTopRight,

  FrustumCorners_Count
};

class Camera {
 public:
  Camera(float fov = 60.f);
  ~Camera() {}

  void Update(Player* player, float iod);
  bool IsPointVisible(C3D_FVec point);
  bool IsAABBVisible(C3D_FVec orgin, C3D_FVec size);

  C3D_Mtx pProj;
  C3D_Mtx pView;
  C3D_Mtx pVp;
  C3D_FVec pFrustumPlanes[FrustumPlanes_Count];
  PD::fvec3 pFrustumCorners[FrustumCorners_Count];

  float pNear = 0.f;
  float pFar = 0.f;
  float pFov = 0.f;
};
}  // namespace CN