#include <cn/ConstIDs.hpp>
#include <cn/gfx/Renderer.hpp>
#include <cn/gui/Gui.hpp>
#include <cn/gui/menus/Menus.hpp>
#include <cn/misc/TaskMgr.hpp>

#include "world_shbin.h"

extern "C" {
#include <rendering/PolyGen.h>
#include <rendering/TextureMap.h>
#include <rendering/WorldRenderer.h>
}

struct WorldVertex2 {
  PD::fvec3 xyz;
  PD::fvec2 uv;   // Unused in this ctx yet
  PD::u8 rgb[3];  // Unused in this ctx yet
};

WorldVertex2 pCubeVtxList[] = {
    // Fourth face (MX)
    {PD::fvec3(0, 0, 0), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(0, 0, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(0, 1, 1), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(0, 1, 1), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(0, 1, 0), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(0, 0, 0), PD::fvec2(0, 0), {255, 255, 255}},
    // Third face (PX)
    {PD::fvec3(1, 0, 0), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(1, 1, 0), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(1, 0, 1), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(1, 0, 0), PD::fvec2(1, 0), {255, 255, 255}},
    // Sixth face (MY)
    {PD::fvec3(0, 0, 0), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(1, 0, 0), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(1, 0, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(1, 0, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(0, 0, 1), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(0, 0, 0), PD::fvec2(0, 1), {255, 255, 255}},
    // Fifth face (PY)
    {PD::fvec3(0, 1, 0), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(0, 1, 1), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(1, 1, 0), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(0, 1, 0), PD::fvec2(0, 1), {255, 255, 255}},
    // Second face (MZ)
    {PD::fvec3(0, 0, 0), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(0, 1, 0), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(1, 1, 0), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(1, 1, 0), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(1, 0, 0), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(0, 0, 0), PD::fvec2(1, 0), {255, 255, 255}},
    // First face (PZ)
    {PD::fvec3(0, 0, 1), PD::fvec2(0, 0), {255, 255, 255}},
    {PD::fvec3(1, 0, 1), PD::fvec2(1, 0), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(1, 1, 1), PD::fvec2(1, 1), {255, 255, 255}},
    {PD::fvec3(0, 1, 1), PD::fvec2(0, 1), {255, 255, 255}},
    {PD::fvec3(0, 0, 1), PD::fvec2(0, 0), {255, 255, 255}},
};

constexpr int numTiles = UV_PRECISION / TEXTURE_MAPTILES;

PD::fvec3 Mtx4xFvec3(const PD::Mat4& m, const PD::fvec3& v) {
  PD::fvec3 ret;
  ret.x = PD::fvec3(m(0, 0), m(0, 1), m(0, 2)).Dot(v);
  ret.y = PD::fvec3(m(1, 0), m(1, 1), m(1, 2)).Dot(v);
  ret.z = PD::fvec3(m(2, 0), m(2, 1), m(2, 2)).Dot(v);
  return ret;
}

extern bool showDebugInfo;
extern "C" void RcLoadAsync(void* d);

constexpr u32 DISPLAY_TRANSFER_FLAGS =
    GX_TRANSFER_FLIP_VERT(0) | GX_TRANSFER_OUT_TILED(0) |
    GX_TRANSFER_RAW_COPY(0) | GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) |
    GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGB8) |
    GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO);

struct SceneChange {
  CN::Menu* Menu = nullptr;
  CN::Menu* From = nullptr;
};

SceneChange pSceneMgr;

namespace CN {
PD::Mat4 Renderer::pIconMtx;
PD::Li::Drawlist Renderer::pDL;
PD::Li::Texture Renderer::pTmpTex;
C3D_RenderTarget* Renderer::pTop[2];
C3D_RenderTarget* Renderer::pBot;
C3D_AttrInfo Renderer::pAttrWorld;
DVLB_s* Renderer::pWorldDVLB;
shaderProgram_s Renderer::pWorldShader;
int Renderer::uLocProj = 0;
CN::DebugUI* Renderer::pDebug = nullptr;

void Renderer::Init() {
  C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
  pTop[0] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
  pTop[1] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
  C3D_RenderTargetSetOutput(pTop[0], GFX_TOP, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);
  C3D_RenderTargetSetOutput(pTop[1], GFX_TOP, GFX_RIGHT,
                            DISPLAY_TRANSFER_FLAGS);
  pBot = C3D_RenderTargetCreate(240, 320, GPU_RB_RGBA8, GPU_RB_DEPTH16);
  C3D_RenderTargetSetOutput(pBot, GFX_BOTTOM, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);
  // Init Shader
  pWorldDVLB = DVLB_ParseFile((u32*)world_shbin, world_shbin_size);
  shaderProgramInit(&pWorldShader);
  shaderProgramSetVsh(&pWorldShader, &pWorldDVLB->DVLE[0]);
  uLocProj =
      shaderInstanceGetUniformLocation(pWorldShader.vertexShader, "projection");

  AttrInfo_Init(&pAttrWorld);
  AttrInfo_AddLoader(&pAttrWorld, 0, GPU_SHORT, 3);
  AttrInfo_AddLoader(&pAttrWorld, 1, GPU_SHORT, 2);
  AttrInfo_AddLoader(&pAttrWorld, 2, GPU_UNSIGNED_BYTE, 3);
  pIconMtx = PD::Mat4::Identity();
  pIconMtx *= PD::Mat4::RotateX(M_PI / 6.f);
  pIconMtx *= PD::Mat4::RotateY(M_PI / 4.f);

  Lgy_InitPalladium();
  RcLoadAsync(nullptr);
  pSceneMgr.Menu = new CN::TitleMenu();
}

void Renderer::Deinit() {
  // pSceneMgr.Menu.reset();
  // pSceneMgr.From.reset();
  shaderProgramFree(&pWorldShader);
  DVLB_Free(pWorldDVLB);
  C3D_Fini();
}

void Renderer::UseShader() {
  C3D_TexEnv* env = C3D_GetTexEnv(0);
  C3D_TexEnvInit(env);
  C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0, GPU_PRIMARY_COLOR,
                GPU_PRIMARY_COLOR);
  C3D_TexEnvFunc(env, C3D_Both, GPU_MODULATE);

  shaderProgramUse(&pWorldShader);
  C3D_BindProgram(&pWorldShader);
  C3D_SetAttrInfo(&pAttrWorld);
}

void Renderer::Render2D(PD::ivec2 size) {
  PD::Gfx::Reset();  // Binds shader
  PD::Gfx::SetViewPort(size);
  PD::Gfx::Draw(pDL.Data());
}

void Renderer::StartFrame() {
  C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
  PD::TT::Beg("Renderer::Frame");
  PD::Gfx::NewFrame();
}

void Renderer::OptimizeUiList(PD::Li::Drawlist& list) {
  // list->pPool.Sort();
}

void Renderer::EndFrame() {
  PD::TT::End("Renderer::Frame");
  C3D_FrameEnd(0);
}

void Renderer::Render(World* world, GameState* s) {
  float iod = osGet3DSliderState() * PLAYER_HALFEYEDIFF;
  StartFrame();
  UseShader();
  PolyGen_Harvest();
  /*pDebug->Line(
      std::format("UI Vtx/Idx: {}/{}", pDL.pNumVertices, pDL.pNumIndices));*/
  PD::TT::Beg("Create_TopUI");
  Start2D();
  // Invisible rect (cause the first quad in a dl doesnt render)
  pDL.DrawRect(0, 0, PD::Color(0, 0, 0, 0));
  /** Create the Drawlist once not twice */
  if (showDebugInfo && pDebug) {
    pDebug->DrawInto(pDL);
  }
  pDL.SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFontDebug));
  pDL.SetFontscale(0.375f);
  int __i = 0;
  for (auto& it : PD::TT::GetTraceMap()) {
    pDL.DrawText(PD::fvec2(2, 120 + (__i++) * 9),
                 std::format("{}: {}", it.second.GetID(),
                             PD::Strings::FormatNanos(it.second.GetLastDiff()))
                     .c_str(),
                 "#ffff00");
  }
  pDL.SetFontscale(0.7f);
  PD::TT::End("Create_TopUI");
  for (int i = 0; i < 2; i++) {
    PD::TT::Scope __st("RenderTop_" + std::string(i == 0 ? "Left" : "Right"));
    Clear(pTop[0], 0x90d9ffff);
    DrawOn(pTop[i]);
    UseShader();
    if (*s == GameState_Playing || *s == GameState_Pause) {
      C3D_TexBind(0, (C3D_Tex*)Block_GetTextureMap());
      WorldRenderer_Render(!i ? -iod : iod);
      DrawTexElement(*CN::ResourceMgr::GetTex(CN::RC::GuiIcons),
                     PD::fvec2(200 - 12, 120 - 12), 24, GuiIcon_Crosshair);
    }
    Render2D(PD::fvec2(400, 240));
  }
  Clear(pBot, 0x00000000);
  DrawOn(pBot);
  Start2D();
  // pDL.Layer(0);
  // Bar     : 182x22
  // Optimal : 314x38
  // Using normal %2 maths didnt work or i am stupid idk
  // bool color = false;
  // for (int i = 0; i < 8; i++) {
  //   for (int j = 0; j < 5; j++) {
  //     pDL.Layer = 1;
  //     pDL.DrawRectFilled(PD::fvec2(24 + i * 34, 15 + j * 34),
  //                         PD::fvec2(34, 34), color ? 0xff333333 :
  //                         0xff222222);
  //     pDL.Layer = 2;
  //     DrawIcon((Block)j * 8 + i + 1, 0, PD::fvec2(24 + i * 34, 15 + j *
  //     34)); color = !color;
  //   }
  //   // color = !color;
  // }
  // pDL.Layer = 1;
  // DrawTexElement(CN::ResourceMgr::GetTex(CN::RC::GuiWidgets), PD::fvec2(3,
  // 201),
  //                PD::fvec2(314, 38), PD::fvec4(0, 0, 182, 22));
  // pDL.Layer = 3;
  // DrawTexElement(CN::ResourceMgr::GetTex(CN::RC::GuiWidgets), PD::fvec2(2,
  // 200),
  //                PD::fvec2(40, 40), PD::fvec4(0, 22, 24, 24));
  // pDL.Layer = 2;
  // DrawIcon(Block_Grass, 0, PD::fvec2(4, 202));
  // pDL.Layer = 4;
  // pDL.DrawTextEx(PD::fvec2(34, 220), "64", 0xffffffff,
  //                 LiTextFlags_AlignRight | LiTextFlags_Shaddow);
  PD::TT::Beg("Bottom UI");
  pSceneMgr.Menu->Update();
  pDL.Merge(pSceneMgr.Menu->GetDrawList());
  if (pSceneMgr.Menu->ShouldGoBack()) {
    pSceneMgr.Menu->pGoBack = false;
    if (pSceneMgr.From) {
      pSceneMgr.Menu = pSceneMgr.From;
    }
  } else if (pSceneMgr.Menu->ShouldGoTo()) {
    auto tmp = pSceneMgr.Menu->ShouldGoTo();
    pSceneMgr.From = pSceneMgr.Menu;
    pSceneMgr.Menu->pGoTo = nullptr;
    pSceneMgr.Menu = tmp;
  }
  // PD::TT::Beg("2db");
  // Optimizing the renderbuffer gives us ~1.4 - 1.6 ms less render time
  OptimizeUiList(pDL);
  Render2D(PD::fvec2(320, 240));
  PD::TT::End("Bottom UI");
  // PD::TT::End("2db");
  EndFrame();
  /*pDebug->Line(std::format("UI: {} / {} / {} / {}",
     PD::Gfx::GetNumVertices(), PD::Gfx::GetNumIndices(),
     PD::Gfx::GetNumCommands(), PD::Gfx::GetNumDrawcalls()));*/
  /*if (pDebug) {
    pDebug->Line("Top UI: " +
                 PD::Strings::FormatNanos(
                     PD::OS::GetTraceRef("2dt")->GetProtocol()->GetAverage()));
    pDebug->Line("Bot UI: " +
                 PD::Strings::FormatNanos(
                     PD::OS::GetTraceRef("2db")->GetProtocol()->GetAverage()));
  }*/
}

void Renderer::DrawOn(C3D_RenderTarget* t) { C3D_FrameDrawOn(t); }

void Renderer::Clear(C3D_RenderTarget* t, u32 clr) {
  C3D_RenderTargetClear(t, C3D_CLEAR_ALL, clr, 0);
}

void Renderer::DrawTexElement(PD::Li::Texture tex, PD::fvec2 pos,
                              PD::fvec2 size, PD::fvec4 cut) {
  PD::Li::Texture ttex = tex;
  ttex.SetUV(
      PD::fvec4(static_cast<float>(cut.x) / ttex.GetSize().x,
                1.f - static_cast<float>(cut.y) / ttex.GetSize().y,
                static_cast<float>(cut.x + cut.z) / ttex.GetSize().x,
                1.f - static_cast<float>(cut.y + cut.w) / ttex.GetSize().y));
  ttex.SetSize(cut.z, cut.w);
  pDL.BindTexture(ttex);
  pDL.DrawRectFilled(pos, size, 0xffffffff);
  pDL.UnbindTexture();
}

void Renderer::Start2D() {
  PD::TT::Scope st("Renderer::Start2D");
  pDL.Clear();
  pDL.SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFont));
  pDL.SetFontscale(0.7f);
}

PD::Li::Texture blocktex;
void Renderer::DrawIcon(uint8_t b, uint8_t m, PD::fvec2 pos) {
  // Lets draw a Block icon in Palladium
  // Texture(TexAddress addr, ivec2 size, Li::Rect uv = fvec4(0.f,
  // 0.f, 1.f, 1.f))
  WorldVertex2 vtx[6 * 6];
  memcpy(vtx, pCubeVtxList, sizeof(WorldVertex2) * 36);
  /**
   * Loading the texture once gives us the ability to save ~3ms
   * per frame for drawing 40 icons on screen (if combined with
   * OptimizeUiList).
   */
  if (!blocktex.GetID()) {
    blocktex.SetID((PD::TextureID)Block_GetTextureMap());
    blocktex.SetSize(TEXTURE_MAPSIZE);
    blocktex.SetUV(PD::fvec4(0, 1, 1, 0));
  }
  for (int i = 0; i < 6; i++) {
    if (i != Direction_Top && i != Direction_South && i != Direction_West)
      continue;
    int16_t iconUV[2];
    uint8_t color[3];
    Block_GetTexture(b, (Direction)i, m, iconUV);
    Block_GetColor(b, m, (Direction)i, color);

    auto& cmd = pDL.NewCommand();
    cmd.Tex = blocktex.GetID();
    for (int j = 0; j < 5; j++) {
      int k = i * 6 + j;
      PD::fvec3 p = PD::fvec3(vtx[k].xyz - 0.5f);
      auto v = Mtx4xFvec3(pIconMtx, p);
      int szs = 16;
      vtx[k].xyz.x = FastFloor(v.x * szs) + (pos.x + szs + 2);
      vtx[k].xyz.y = -FastFloor(v.y * szs) + (pos.y + szs + 2);
    }

    PD::fvec2 bl = PD::fvec2(vtx[i * 6 + 0].xyz.x, vtx[i * 6 + 0].xyz.y);
    PD::fvec2 br = PD::fvec2(vtx[i * 6 + 1].xyz.x, vtx[i * 6 + 1].xyz.y);
    PD::fvec2 tr = PD::fvec2(vtx[i * 6 + 2].xyz.x, vtx[i * 6 + 2].xyz.y);
    PD::fvec2 tl = PD::fvec2(vtx[i * 6 + 4].xyz.x, vtx[i * 6 + 4].xyz.y);

    /** I dont like this solution but the fade function seems to be broken */
    u32 clr32 = PD::Color(color[0], color[1], color[2], 255);
    if (i == Direction_South) {
      clr32 = PD::Color(color[0] * 0.8, color[1] * 0.8, color[2] * 0.8, 255);
    } else if (i == Direction_West) {
      clr32 = PD::Color(color[0] * 0.9, color[1] * 0.9, color[2] * 0.9, 255);
    }
    /**
     * Very advanced usage of the palladium Renderign API
     * Please dont try to understand it by this example...
     * Probabl the code in Lithium Drawlist is a better start
     */
    PD::Li::Rect uvs =
        PD::fvec4((float)iconUV[0] / (float)UV_PRECISION,
                  (float)(iconUV[1] + numTiles) / (float)UV_PRECISION,
                  (float)(iconUV[0] + numTiles) / (float)UV_PRECISION,
                  (float)iconUV[1] / (float)UV_PRECISION);
    cmd.Add(0).Add(1).Add(2);
    cmd.Add(0).Add(2).Add(3);
    cmd.Add(PD::Li::Vertex(br, uvs.BotRight(), clr32));
    cmd.Add(PD::Li::Vertex(tr, uvs.TopRight(), clr32));
    cmd.Add(PD::Li::Vertex(tl, uvs.TopLeft(), clr32));
    cmd.Add(PD::Li::Vertex(bl, uvs.BotLeft(), clr32));
  }
}
}  // namespace CN