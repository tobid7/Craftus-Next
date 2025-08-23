#include <cn/Game.hpp>
#include <cn/Lgy.hpp>
#include <cn/entity/Damage.hpp>
#include <cn/gfx/TexLoader.hpp>
#include <cn/misc/Crash.hpp>
#include <cn/misc/Fs.hpp>
#include <cn/misc/Memory.hpp>
#include <palladium>

extern "C" {
#include <entity/Player.h>

GameOptions cn_options;

void Lgy_OvertimeDamage(const char* cause, int time, void* plr) {
  TME::OvertimeDamage(cause, time, (Player*)plr);
}

u32 Lgy_FastHash(const char* str) { return (u32)PD::Strings::FastHash(str); }

void* Lgy_LoadImg2BufRGBA(const char* path, size_t* len, size_t* w, size_t* h,
                          bool flip) {
  size_t tw, th;
  auto ret = TME::LoadImage2RGBA(path, tw, th, flip);
  *w = tw;
  *h = th;
  *len = ret.size();
  PD::u8* mem = new PD::u8[*len];
  std::memcpy(mem, ret.data(), *len);
  return mem;
}

void Lgy_DeleteImgBuf(void* mem) { delete[] mem; }

void Lgy_LoadTexRGBA(C3D_Tex* ret, void* data, size_t len, size_t w, size_t h) {
  TME::LoadTexRGBA(ret, std::vector<PD::u8>((PD::u8*)data, (PD::u8*)data + len),
                   w, h);
}

void Lgy_InitFS() { TME::InitFS(); }

void Lgy_Log(const char* fmt, ...) {
  va_list args;
  va_start(args, fmt);

  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), fmt, args);

  va_end(args);

  TME::Log(std::string(buffer));
}

void Lgy_Crash(const char* reason, ...) {
  va_list args;
  va_start(args, reason);

  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), reason, args);

  va_end(args);

  TME::Crash(std::string(buffer));
}

void Lgy_InitCxxExceptionScreen() { TME::InitExceptionCallback(); }

VBO_Block Lgy_Vbo_Alloc(size_t size) {
  auto b = TME::VboCache::New(size);
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
    auto b = (TME::VboBlock*)block.cxx_addr;
    if (b->pData != block.memory || (u32)b->pData < 0x1000) {
      throw std::runtime_error("Found sus memory block! b " +
                               std::to_string((u32)b->pData) + " m " +
                               std::to_string((u32)block.memory));
    }
    TME::VboCache::Delete(b);
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
  PD::Image::Ref img = PD::Image::New();
  img->Load("romfs:/splash.png");
  img->FlipVertical();
  PD::Image::Convert(img, img->RGB);
  u16 w, h;
  u8* fb = gfxGetFramebuffer(GFX_TOP, GFX_LEFT, &w, &h);
  for (int i = 0; i < 240; i++) {
    for (int j = 0; j < 400; j++) {
      int src = (i * 400 + j) * 3;
      int dst = (j * 240 + i) * 3;
      fb[dst + 0] = img->pBuffer[src + 2];
      fb[dst + 1] = img->pBuffer[src + 1];
      fb[dst + 2] = img->pBuffer[src + 0];
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
}