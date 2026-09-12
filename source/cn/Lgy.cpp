#include <cn/ConstIDs.hpp>
#include <cn/Game.hpp>
#include <cn/Lgy.hpp>
#include <cn/entity/Damage.hpp>
#include <cn/gfx/Camera.hpp>
#include <cn/gfx/Renderer.hpp>
#include <cn/gfx/TexLoader.hpp>
#include <cn/gui/DebugUI.hpp>
#include <cn/misc/Crash.hpp>
#include <cn/misc/Fs.hpp>
#include <cn/misc/Memory.hpp>
#include <cn/misc/ResourceMgr.hpp>
#include <cn/misc/TaskMgr.hpp>
#include <cstdarg>
#include <cstdio>
#include <map>
#include <nlohmann/json.hpp>
#include <palladium>
#include <pdsystem>

extern "C" {
#include <entity/Player.h>
#include <rendering/TextureMap.h>
#include <rendering/WorldRenderer.h>

GameOptions cn_options;
extern bool showDebugInfo;
extern WorldVertex cube_sides_lut[];

constexpr int numTiles = UV_PRECISION / TEXTURE_MAPTILES;

static PD::Li::Font font;
static PD::Li::Drawlist list;
static std::map<u32, PD::Li::Texture> texlist;
// static PD::UI7::Context ui7 = nullptr;
static float dyn__ = 1.f;
static C3D_Mtx iconMdl;
static CN::DebugUI pDebug;

void Lgy_OvertimeDamage(const char* cause, int time, void* plr) {
  CN::OvertimeDamage(cause, time, (Player*)plr);
}

u32 Lgy_FastHash(const char* str) { return (u32)PD::Strings::FastHash(str); }

void* Lgy_LoadImg2BufRGBA(const char* path, size_t* len, size_t* w, size_t* h,
                          bool flip) {
  size_t tw, th;
  auto ret = CN::LoadImage2RGBA(path, tw, th, flip);
  *w = tw;
  *h = th;
  *len = ret.size();
  PD::u8* mem = new PD::u8[*len];
  std::memcpy(mem, ret.data(), *len);
  return mem;
}

void Lgy_DeleteImgBuf(void* mem) { delete[] mem; }

void Lgy_LoadTexRGBA(C3D_Tex* ret, void* data, size_t len, size_t w, size_t h) {
  CN::LoadTexRGBA(ret, std::vector<PD::u8>((PD::u8*)data, (PD::u8*)data + len),
                  w, h);
}

void Lgy_InitFS() { CN::InitFS(); }

void Lgy_Log(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);

  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), fmt, args);

  va_end(args);

  CN::Log(buffer);
}

void Lgy_Crash(const char* reason, ...) {
  va_list args;
  va_start(args, reason);

  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), reason, args);

  va_end(args);

  CN::Crash(std::string(buffer));
}

void Lgy_InitCxxExceptionScreen() { CN::InitExceptionCallback(); }

VBO_Block Lgy_Vbo_Alloc(size_t size) {
  auto b = CN::VboCache::New(size);
  return (VBO_Block){b->pSize, b->pData, b};
}

/**
 * Never
 * write
 * code
 * like
 * this
 */
void Lgy_Vbo_Free(VBO_Block block) {
  if (block.cxx_addr && block.memory != nullptr) {
    auto b = (CN::VboBlock*)block.cxx_addr;
    if (b->pData != block.memory || (u32)b->pData < 0x1000) {
      throw std::runtime_error("Found sus memory block! b " +
                               std::to_string((u32)b->pData) + " m " +
                               std::to_string((u32)block.memory));
    }
    CN::VboCache::Delete(b);
    block.cxx_addr = nullptr;
    block.memory = nullptr;
    block.size = 0;
  }
}

void Lgy_GameOptionsInit() {
  cn_options.Fov = 60.f;
  cn_options.ViewBobbing = true;
  cn_options.Clouds = true;
  cn_options.Hand = true;
  cn_options.MipMapLvl = 2;
  if (!std::filesystem::exists("sdmc:/3ds/CraftusNext/options.json")) {
    Lgy_GameOptionsSave();
    return;
  }
  std::ifstream iff("sdmc:/3ds/CraftusNext/options.json", std::ios::in);
  nlohmann::json js;
  iff >> js;
  iff.close();
  if (js["cfg_ver"].get<int>() != 0) {
    Lgy_GameOptionsSave();
    return;
  }
  cn_options.Fov = js["fov"].get<int>();
  cn_options.ViewBobbing = js["view-bobbing"].get<bool>();
  cn_options.Clouds = js["show-clouds"].get<bool>();
  cn_options.Hand = js["show-hand"].get<bool>();
  cn_options.MipMapLvl = js["mipmap-levels"].get<int>();
}

void Lgy_GameOptionsSave() {
  nlohmann::json js;
  js["cfg_ver"] = 0;
  js["fov"] = cn_options.Fov;
  js["view-bobbing"] = cn_options.ViewBobbing;
  js["show-clouds"] = cn_options.Clouds;
  js["show-hand"] = cn_options.Hand;
  js["mipmap-levels"] = cn_options.MipMapLvl;
  std::ofstream off("sdmc:/3ds/CraftusNext/options.json", std::ios::out);
  off << js.dump(4);
  off.close();
}

void Lgy_Splash() {
  PD::Image img;
  img.Load("romfs:/splash.png");
  img.Flip(false, true);
  img.Convert(PD::Image::Format::RGB);
  u16 w, h;
  u8* fb = gfxGetFramebuffer(GFX_TOP, GFX_LEFT, &w, &h);
  for (int i = 0; i < 240; i++) {
    for (int j = 0; j < 400; j++) {
      int src = (i * 400 + j) * 3;
      int dst = (j * 240 + i) * 3;
      fb[dst + 0] = img.data()[src + 2];
      fb[dst + 1] = img.data()[src + 1];
      fb[dst + 2] = img.data()[src + 0];
    }
  }
  gfxSwapBuffers();
}

char* Lgy_File2Str(const char* path, size_t* lines) {
  std::ifstream iff(path);
  std::string line;
  std::string ret;
  int i = 0;
  while (std::getline(iff, line)) {
    ret += line + '\n';
    i++;
  }
  char* str = (char*)lgy_malloc(ret.size() + 1);
  memcpy(str, ret.data(), ret.size());
  str[ret.size()] = '\0';
  if (lines != NULL) {
    *lines = i;
  }
  return str;
}

void* Lgy_DebugMalloc(size_t size, const char* f, int l) {
  return CN::Memory::New(size, f, l);
}

void Lgy_DebugFree(void* ptr, const char* f, int l) {
  CN::Memory::Delete(ptr, f, l);
}

void Lgy_Render2D() {
  // list.Clear();
  // list.DrawRectFilled(0, PD::fvec2(320, 240), 0xffffffff);
  // list.SetFont(font);
  // list.DrawTextEx(5, "Hello World!\nCraftus v0.7.1-dev\nA Minecraft Clone",
  //                  0xffff00ff, LiTextFlags_Shaddow);
  // PD::Gfx::SetViewPort(PD::ivec2(320, 240));
  // PD::Gfx::NewFrame();
  // PD::Gfx::RenderDrawData(list.pDrawList);
}

void Lgy_InitPalladium() {
  PD::Gfx::UseDriver<PD::GfxCitro3D>();
  PD::Hid::UseDriver<PD::HidDriver>();
  PD::Os::UseDriver<PD::OsDriver>();
  PD::Gfx::Init();
  // font = PD::Li::Font::New();
  // CN::ResourceMgr::SetContext(pd_ctx);
  CN::ResourceMgr::Load("romfs:/fonts/Miracode.ttf", CN::RCID::FontTTF);
  auto font = new PD::Li::Font();
  font->LoadTTF("romfs:/fonts/Miracode.ttf", 32, LiFontFlags_SDF | LiFontFlags_Monospace);
  CN::ResourceMgr::Push(CN::RC::MiracodeFontDebug, font);
  /*ui7 = PD::UI7::Context::New(pd_ctx);
  ui7->AddViewPort("bot", PD::ivec4(0, 0, 320, 240));
  ui7->UseViewPort("bot");
  ui7->pIO->Font = CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFont);*/
  // font->LoadTTF("romfs:/fonts/Miracode.ttf", 64);
  // Lgy Icons
  Mtx_Identity(&iconMdl);
  Mtx_RotateY(&iconMdl, M_PI / 4.f, false);
  Mtx_RotateX(&iconMdl, M_PI / 6.f, false);
}

u32 Lgy_LoadTexture(const char* path) {
  u32 id = PD::Strings::FastHash(path);
  PD::Image img;
  img.Load(path);
  auto tex = PD::Gfx::LoadTexture(img.data(), img.Width(), img.Height(),
                                  PD::TextureFormat::RGBA32,
                                  PD::TextureFilter::Nearest);
  texlist[id] = tex;
  return id;
}

void Lgy_GetTextureBounds(u32 texid, int* x, int* y) {
  auto t = texlist.find(texid);
  if (t == texlist.end()) {
    *x = 0;
    *y = 0;
    return;
  }
  *x = t->second.GetSize().x;
  *y = t->second.GetSize().y;
}

void Lgy_DrawTexElement(u32 texid, int x, int y, int w, int h, int cx, int cy,
                        int cw, int ch) {
  if (!texlist.count(texid)) {
    return;
  }
  PD::Li::Texture subtex;
  // subtex.CopyFrom(texlist[texid]);
  subtex.SetUV(
      PD::fvec4(static_cast<float>(cx) / subtex.GetSize().x,
                1.f - static_cast<float>(cy) / subtex.GetSize().y,
                static_cast<float>(cx + cw) / subtex.GetSize().x,
                1.f - static_cast<float>(cy + ch) / subtex.GetSize().y));
  subtex.SetSize(cw, ch);
  list.BindTexture(subtex);
  list.DrawRectFilled(PD::fvec2(x, y), PD::fvec2(w * dyn__, h * dyn__),
                      0xffffffff);
  list.UnbindTexture();
}

void Lgy_DrawText(int x, int y, bool shaddow, const char* text, ...) {
  va_list args;
  va_start(args, text);

  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), text, args);

  va_end(args);
  list.SetFontscale(0.7f * dyn__);
  list.DrawTextEx(PD::fvec2(x, y), buffer, 0xffffffff, shaddow ? 4 : 0);
}

void Lgy_StartFrame(int w, int h) {
  list.Clear();
  list.SetFont(CN::ResourceMgr::GetFontTTF(CN::RC::MiracodeFont));
}

void Lgy_Render(int w, int h) {
  PD::Gfx::SetViewPort(w, h);
  PD::Gfx::Draw(list);
}

void Lgy_Finish2D() { PD::Gfx::Reset(); }

void Lgy_DynScale(float scale) {
  dyn__ = scale;
  if (dyn__ == 0.0f) {
    dyn__ = 1.f;
  }
}

/*u32 ui_Cfg =
    UI7MenuFlags_NoCollapse | UI7MenuFlags_NoMove | UI7MenuFlags_NoResize;*/

void Lgy_HandleUI(void* gs_ptr) {
  /*GameState* gs = (GameState*)gs_ptr;
  if (*gs == GameState_Title) {
    if (ui7->BeginMenu("Title", ui_Cfg)) {
      auto m = ui7->pCurrent;
      if (m->Button("Singleplayer")) {
        *gs = GameState_SelectWorld;
      }
      if (m->Button("Options")) {
        *gs = GameState_Options;
      }
      ui7->EndMenu();
    }
  } else if (*gs == GameState_SelectWorld) {
    if (ui7->BeginMenu("World Select", ui_Cfg)) {
      auto m = ui7->pCurrent;
      m->Label("Hello UI7");
      ui7->EndMenu();
    }
  } else if (*gs == GameState_Options) {
    if (ui7->BeginMenu("Options", ui_Cfg)) {
      auto m = ui7->pCurrent;
      m->SeparatorText("Graphics");
      m->DragData("MipMap Levels", &cn_options.MipMapLvl, 1, 0, 4);
      m->DragData("Fov", &cn_options.Fov, 1, 30.f, 110.f);
      m->Checkbox("Render Clouds", cn_options.Clouds);
      m->Checkbox("Render Hand", cn_options.Hand);
      m->Checkbox("View Bobbing", cn_options.ViewBobbing);
      if (m->Button("back")) {
        *gs = GameState_Title;
      }
      ui7->EndMenu();
    }
  } else if (*gs == GameState_Playing) {
    if (ui7->BeginMenu("Game", ui_Cfg)) {
      auto m = ui7->pCurrent;
      float env_size_mb = (float)envGetLinearHeapSize() / 1024.f / 1024.f;
      float space_mb = (float)linearSpaceFree() / 1024.f / 1024.f;
      size_t allocs = 0;
      m->Label(std::format("Linear Ram {:.2f}mb/{:.2f}mb",
                           env_size_mb - space_mb, env_size_mb));
      /**
       * Using a variable that gets set while getting another
       * probably not the way how to do things correct
       * but i dont care for this c based engine...
       */
  //   m->Label(std::format(
  //      "Vbo: {:.2f} Allocations: {}",
  //       (float)CN::MemMgr::CountOf(CN::MemMgr::Type_Vbo, true, &allocs) /
  //       1024.f /
  //           1024.f,
  //       allocs));
  //   m->Label(std::format(
  //       "Tex: {:.2f} Allocations: {}",
  //       (float)CN::MemMgr::CountOf(CN::MemMgr::Type_Tex, true, &allocs) /
  //       1024.f, allocs));
  //   m->Label(std::format(
  //       "Snd: {:.2f} Allocations: {}",
  //       (float)CN::MemMgr::CountOf(CN::MemMgr::Type_Snd, true, &allocs) /
  //       1024.f, allocs));
  //   m->Label(std::format(
  //       "Unk: {:.2f} Allocations: {}",
  //       (float)CN::MemMgr::CountOf(CN::MemMgr::Type_Unk, true, &allocs) /
  //       1024.f, allocs));
  //   m->Checkbox("Debug (F3)", showDebugInfo);
  //   ui7->EndMenu();
  // }
  // }
  // ui7->Update();
  // list.Merge(ui7->GetDrawData());
}

void Lgy_UpdateInput() { PD::Hid::Update(); }

void* Lgy_LinearAlloc(size_t size, MemType type) {
  return CN::MemMgr::NewLinLgy(size, (CN::MemMgr::Type)type);
}
void Lgy_LinearFree(void* mem) { CN::MemMgr::DeleteLin(mem); }

void RcLoadAsync(void* d) {
  const std::string rcp_ = "romfs:/assets/textures/gui/";
  CN::ResourceMgr::Load(rcp_ + "title/craftus.png", CN::RCID::Texture);
  CN::ResourceMgr::Load(rcp_ + "icons.png", CN::RCID::Texture);
  CN::ResourceMgr::Load(rcp_ + "options_background.png", CN::RCID::Texture);
  CN::ResourceMgr::Load(rcp_ + "widgets.png", CN::RCID::Texture);
  CN::ResourceMgr::Load("romfs:/assets/textures/entity/tobid7vx.png",
                        CN::RCID::Texture);
}

CN::TaskMgr::Task __task;

void Lgy_InitRenderStage(void* world, void* gs, void* player, void* cw) {
  LOG("Lgy_InitRenderStage");
  // CN::TaskMgr::Init();
  CN::Renderer::Init();
  CN::Renderer::pDebug = &pDebug;
  PolyGen_Init((World*)world, (Player*)player);
  WorldRenderer_Init((Player*)player, (World*)world, &((ChunkWorker*)cw)->queue,
                     CN::Renderer::uLocProj);
  Block_Init();
  C3D_CullFace(GPU_CULL_BACK_CCW);
  // auto t = CN::TaskMgr::CreateTask(0);
  // t->Func = RcLoadAsync;
  // CN::TaskMgr::PushTask(t);
  // __task.Func = RcLoadAsync;
  // __task.Prio = 0;
  // CN::TaskMgr::PushTask(&__task);
}

void Lgy_ExitRenderStage() {
  Block_Deinit();
  WorldRenderer_Deinit();
  PolyGen_Deinit();
  CN::Renderer::Deinit();
  // CN::TaskMgr::Deinit();
}

void Lgy_Render_(void* world, void* gs) {
  CN::Renderer::Render((World*)world, (GameState*)gs);
}

void Lgy_LoadResourcesAsync(void* queue, int item, void* data) {}

void Lgy_DebugUI_Text(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  char buffer[256];
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);

  pDebug.Line(std::string(buffer));
}

void Lgy_DebugUI_Log(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);
  char buffer[256];
  vsnprintf(buffer, sizeof(buffer), fmt, args);
  va_end(args);

  pDebug.Log(std::string(buffer));
}

void Lgy_CameraInit(LgyCam* cam) {
  CN::Camera* camptr = new CN::Camera();
  *cam = (LgyCam)camptr;
}

void Lgy_CameraUpdate(LgyCam cam, void* player, float iod) {
  CN::Camera* c = (CN::Camera*)cam;
  c->Update((Player*)player, iod);
}

bool Lgy_CameraIsPointVisible(LgyCam cam, C3D_FVec point) {
  CN::Camera* c = (CN::Camera*)cam;
  return c->IsPointVisible(point);
}

bool Lgy_CameraIsAABBVisible(LgyCam cam, C3D_FVec orgin, C3D_FVec size) {
  CN::Camera* c = (CN::Camera*)cam;
  return c->IsAABBVisible(orgin, size);
}

float Lgy_CameraGetNear(LgyCam cam) {
  CN::Camera* c = (CN::Camera*)cam;
  return c->pNear;
}

float Lgy_CameraGetFar(LgyCam cam) {
  CN::Camera* c = (CN::Camera*)cam;
  return c->pFar;
}

C3D_Mtx* Lgy_CameraGetVp(LgyCam cam) {
  CN::Camera* c = (CN::Camera*)cam;
  return &c->pVp;
}

void Lgy_DebugRamLine() {
  Lgy_DebugUI_Text(
      "Heap: %s/%s",
      PD::Strings::FormatBytes(osGetMemRegionUsed(MEMREGION_ALL)).c_str(),
      PD::Strings::FormatBytes(osGetMemRegionSize(MEMREGION_ALL)).c_str());
}

void Lgy_TraceBeg(const char* name) { PD::TT::Beg(name); }

void Lgy_TraceEnd(const char* name) { PD::TT::End(name); }
}