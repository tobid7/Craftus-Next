#include <cn/gfx/Camera.hpp>

namespace TME {
PD::fvec3 f3crs(PD::fvec3 a, PD::fvec3 b) {
  return PD::fvec3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z,
                   a.x * b.y - a.y * b.x);
}
Camera::Camera(float fov) {
  Mtx_Identity(&pView);

  pFov = C3D_AngleFromDegrees(fov);
  pNear = 0.2f;
  pFar = 8.f * CHUNK_SIZE;

  Mtx_PerspTilt(&pProj, pFov, ((400.f) / (240.f)), pNear, pFar, false);
}

void Camera::Update(Player* plr, float iod) {
  Mtx_PerspStereoTilt(&pProj, pFov, ((400.f) / (240.f)), pNear, pFar, iod, 1.f,
                      false);
  PD::fvec3 playerHead(plr->position.x,
                       plr->position.y + PLAYER_EYEHEIGHT +
                           std::sin(plr->bobbing) * 0.1f + plr->crouchAdd,
                       plr->position.z);

  Mtx_Identity(&pView);
  Mtx_RotateX(&pView, -plr->pitch, true);
  Mtx_RotateY(&pView, -plr->yaw, true);
  Mtx_Translate(&pView, -playerHead.x, -playerHead.y, -playerHead.z, true);

  C3D_Mtx vp;
  Mtx_Multiply(&vp, &pProj, &pView);
  Mtx_Copy(&pVp, &vp);

  C3D_FVec rowX = vp.r[0];
  C3D_FVec rowY = vp.r[1];
  C3D_FVec rowZ = vp.r[2];
  C3D_FVec rowW = vp.r[3];

  pFrustumPlanes[Frustum_Near] = FVec4_Normalize(FVec4_Subtract(rowW, rowZ));
  pFrustumPlanes[Frustum_Right] = FVec4_Normalize(FVec4_Add(rowW, rowX));
  pFrustumPlanes[Frustum_Left] = FVec4_Normalize(FVec4_Subtract(rowW, rowX));
  pFrustumPlanes[Frustum_Top] = FVec4_Normalize(FVec4_Add(rowW, rowY));
  pFrustumPlanes[Frustum_Bottom] = FVec4_Normalize(FVec4_Subtract(rowW, rowY));
  pFrustumPlanes[Frustum_Far] = FVec4_Normalize(FVec4_Add(rowW, rowZ));

  PD::fvec3 forward = PD::fvec3(f3_unpack(plr->view));
  PD::fvec3 right =
      PD::fvec3(0.f, 1.f, 0.f)
          .Cross(PD::fvec3(std::sin(plr->yaw), 0.f, std::cos(plr->yaw)));
  PD::fvec3 up = forward.Cross(right);

  float ar = 400.f / 240.f;

  float tan2halffov = 2.f * tanf(pFov / 2.f);

  float hNear = tan2halffov * pNear;
  float wNear = hNear * ar;

  float hFar = tan2halffov * pFar;
  float wFar = hFar * ar;

  PD::fvec3 cNear = playerHead + forward * pNear;
  PD::fvec3 cFar = playerHead + forward * pFar;

  pFrustumCorners[Frustum_NearBottomLeft] =
      (cNear - up * (hNear * 0.5f)) - right * (wNear * 0.5f);
  pFrustumCorners[Frustum_NearBottomRight] =
      (cNear - up * (hNear * 0.5f)) + right * (wNear * 0.5f);
  pFrustumCorners[Frustum_NearTopLeft] =
      (cNear + up * (hNear * 0.5f)) - right * (wNear * 0.5f);
  pFrustumCorners[Frustum_NearTopRight] =
      (cNear + up * (hNear * 0.5f)) + right * (wNear * 0.5f);
  pFrustumCorners[Frustum_FarBottomLeft] =
      (cFar - up * (hFar * 0.5f)) - right * (wFar * 0.5f);
  pFrustumCorners[Frustum_FarBottomRight] =
      (cFar - up * (hFar * 0.5f)) + right * (wFar * 0.5f);
  pFrustumCorners[Frustum_FarTopLeft] =
      (cFar + up * (hFar * 0.5f)) - right * (wFar * 0.5f);
  pFrustumCorners[Frustum_FarTopRight] =
      (cFar + up * (hFar * 0.5f)) + right * (wFar * 0.5f);
}

bool Camera::IsPointVisible(C3D_FVec point) {
  point.w = 1.f;
  for (int i = 0; i < (int)FrustumPlanes_Count; i++)
    if (FVec4_Dot(point, pFrustumPlanes[i]) < 0.f) return false;
  return true;
}

bool Camera::IsAABBVisible(C3D_FVec orgin, C3D_FVec size) {
  PD::fvec3 _min(orgin.x, orgin.y, orgin.z);
  PD::fvec3 _max(orgin.x + size.x, orgin.y + size.y, orgin.z + size.z);
  for (int i = 0; i < 6; i++) {
    int out = 0;
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_min.x, _min.y, _min.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_max.x, _min.y, _min.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_min.x, _max.y, _min.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_max.x, _max.y, _min.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_min.x, _min.y, _max.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_max.x, _min.y, _max.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_min.x, _max.y, _max.z, 1.0f)) < 0.0));
    out += ((FVec4_Dot(pFrustumPlanes[i],
                       FVec4_New(_max.x, _max.y, _max.z, 1.0f)) < 0.0));
    if (out == 8) return false;
  }

  // http://iquilezles.org/www/articles/frustumcorrect/frustumcorrect.htm
  int out;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].x > _max.x));
  if (out == 8) return false;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].x < _min.x));
  if (out == 8) return false;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].y > _max.y));
  if (out == 8) return false;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].y < _min.y));
  if (out == 8) return false;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].z > _max.z));
  if (out == 8) return false;
  out = 0;
  for (int i = 0; i < 8; i++) out += ((pFrustumCorners[i].z < _min.z));
  if (out == 8) return false;

  return true;
}
}  // namespace TME