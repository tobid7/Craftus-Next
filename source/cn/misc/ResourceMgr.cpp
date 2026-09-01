#include <cn/misc/ResourceMgr.hpp>
#include <filesystem>

namespace CN {
std::unordered_map<PD::u32, ResourceMgr::Resource> ResourceMgr::pResources;
// PD::Context::Ref ResourceMgr::pCtx = nullptr;

RCID::Type Try2FindType(const std::string& path) {
  std::string fe = std::filesystem::path(path).filename().extension().string();
  if (fe == ".png" || fe == ".jpg" || fe == ".bmp" || fe == ".jpeg") {
    return RCID::Texture;
  } else if (fe == ".ttf") {
    return RCID::FontTTF;
  }
  return RCID::Invalid;
}

PD::u32 ResourceMgr::Load(const std::string& path, RCID::Type type) {
  PD::u32 ret = 0;
  if (!type) {
    type = Try2FindType(path);
    if (!type) {
      return ret;
    }
  }
  Resource rc;
  rc.ID = RCID(path, type);
  if (type == RCID::Texture) {
    PD::Image img;
    img.Load(path);
    if (img.data().empty()) {
      throw std::runtime_error("Unable to load " + path);
    }
    PD::Li::Texture* tex = new PD::Li::Texture();
    *tex = PD::Gfx::LoadTexture(img.data(), img.Width(), img.Height(),
                                PD::TextureFormat::RGBA32,
                                PD::TextureFilter::Nearest);
    rc.Ptr = tex;
  } else if (type == RCID::FontTTF) {
    PD::Li::Font* font = new PD::Li::Font();
    font->LoadTTF(path);
    rc.Ptr = font;
  }
  pResources[rc.ID] = rc;
  return ret;
}
}  // namespace CN