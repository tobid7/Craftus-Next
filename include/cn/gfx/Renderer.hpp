#pragma once

#ifdef __3DS__
#include <3ds.h>
#include <citro3d.h>
#endif

#include <cn/gfx/Camera.hpp>
#include <cn/gui/DebugUI.hpp>

extern "C" {
#include <GameStates.h>
#include <world/World.h>
}

namespace TME {
class Renderer {
 public:
  Renderer() = default;
  ~Renderer() = default;

  static void Init(PD::Context::Ref ctx);
  static void Deinit();
  static void UseShader();
  static void StartFrame();
  static void EndFrame();
  static void Render(World* world, GameState* s);
  static void DrawOn(C3D_RenderTarget* t);
  static void Clear(C3D_RenderTarget* t, u32 clr);

  /** 2D funcs */
  static void Start2D();
  static void Render2D(PD::ivec2 size);
  static void DrawTexElement(PD::Li::Texture::Ref tex, PD::fvec2 pos,
                             PD::fvec2 size, PD::fvec4 cut);
  static void DrawIcon(uint8_t b, uint8_t m, PD::fvec2 pos);
  static void OptimizeUiList(PD::Li::DrawList::Ref list);

  static PD::Mat4 pIconMtx;
  static PD::Li::DrawList::Ref pDL;
  static PD::Li::Texture::Ref pTmpTex;
  static C3D_RenderTarget* pTop[2];
  static C3D_RenderTarget* pBot;
  static C3D_AttrInfo pAttrWorld;
  static DVLB_s* pWorldDVLB;
  static shaderProgram_s pWorldShader;
  static int uLocProj;
  static CN::DebugUI* pDebug;
  static PD::Context::Ref pCtx;
};
}  // namespace TME