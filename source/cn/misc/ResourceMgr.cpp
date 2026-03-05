#include <cn/misc/ResourceMgr.hpp>

namespace CN {
std::unordered_map<PD::u32, ResourceMgr::Resource> ResourceMgr::pResources;
PD::Context::Ref ResourceMgr::pCtx = nullptr;

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
    auto img = PD::Image::New();
    img->Load(path);
    if (img->pBuffer.empty()) {
      throw std::runtime_error("Unable to load " + path);
    }
    if (pCtx)
      rc.Ptr = pCtx->Gfx()->LoadTex(img->pBuffer, img->pWidth, img->pHeight,
                                    PD::Li::Texture::RGBA32,
                                    PD::Li::Texture::NEAREST);
    if (!rc.Ptr) {
      throw std::runtime_error("Unable to upload texture!");
    }
  } else if (type == RCID::FontTTF) {
    PD::Li::Font::Ref font = PD::Li::Font::New(*pCtx);
    font->LoadTTF(path);
    rc.Ptr = font;
  }
  pResources[rc.ID] = rc;
  return ret;
}
}  // namespace CN