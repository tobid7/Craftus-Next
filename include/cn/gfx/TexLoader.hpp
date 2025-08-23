#pragma once

#include <citro3d.h>

#include <palladium>  // pd-image, pd-core

namespace TME {
std::vector<PD::u8> LoadImage2RGBA(const std::string& path, size_t& w,
                                   size_t& h, bool flip = true);
void LoadTexRGBA(C3D_Tex* ret, const std::vector<unsigned char>& pixels,
                 size_t w, size_t h);
struct TexID {
  TexID() {
    pID = 0;
    pName = "";
  }
  TexID(const std::string& name) {
    pID = PD::Strings::FastHash(name);
    pName = name;
  }
  operator u32() const { return pID; }
  operator std::string() const { return pName; }

  PD::u32 pID;
  std::string pName;  // optional (in future)
};
struct MapIcon {
  PD::u32 pHash;
  PD::fvec4 pUv;
};
class TextureMap {
 public:
  TextureMap();
  ~TextureMap();

  void LoadFiles(const std::vector<std::string>& files);
  void AppendFile(const std::string& path);
  void Bake();
  MapIcon GetIcon(TexID id) {
    if (pIcons.count(id)) {
      return pIcons[id];
    }
    return pInvalid;
  }

 private:
  int pXoff;
  int pYoff;
  // Better would be 1024
  constexpr static int pSize = 512;
  C3D_Tex pTex;
  MapIcon pInvalid;
  std::unordered_map<PD::u32, MapIcon> pIcons;
  // Image buffer for copiyng files into
  PD::Image::Ref pImg;
};
}  // namespace TME