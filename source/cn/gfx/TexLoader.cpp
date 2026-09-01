#ifdef __3DS__
#include <3ds.h>
#endif

#include <cn/gfx/TexLoader.hpp>

namespace CN {
std::vector<PD::u8> LoadImage2RGBA(const std::string& path, size_t& w,
                                   size_t& h, bool flip) {
  PD::Image img;
  img.Load(path);
  img.Convert(PD::Image::Format::RGBA);
  if (flip) {
    img.Flip(false, true);
  }
  w = img.Width();
  h = img.Height();
  return img.data();
}

void LoadTexRGBA(C3D_Tex* ret, const std::vector<unsigned char>& pixels,
                 size_t w, size_t h) {
  if (w > 1024 || h > 1024) {
    return;
  }
#ifdef __3DS__
  int bpp = 4;  // GetBPP(type);
  PD::ivec2 tex_size(w, h);
  // Pow2
  // if (!PD::BitUtil::IsSingleBit(w)) {
  //   tex_size.x = PD::BitUtil::GetPow2((unsigned int)w);
  // }
  // if (!PD::BitUtil::IsSingleBit(h)) {
  //   tex_size.y = PD::BitUtil::GetPow2((unsigned int)h);
  // }
  // pSize = PD::ivec2(w, h);
  // res->UV = fvec4(0.f, 1.f, ((float)w / (float)tex_size.x),
  //                 1.0 - ((float)h / (float)tex_size.y));

  // Texture Setup
  auto fltr =
      GPU_NEAREST;  // (filter == Texture::NEAREST ? GPU_NEAREST : GPU_LINEAR);
  auto tex_fmt = GPU_RGBA8;  // GetTexFmt(type);
  std::memset(ret, 0x0, sizeof(C3D_Tex));
  C3D_TexInit(ret, (u16)tex_size.x, (u16)tex_size.y, tex_fmt);
  C3D_TexSetFilter(ret, fltr, fltr);

  // Using std::fill_n instead cause i hate this error lines
  // under the memset func in my editor
  std::fill_n((PD::u8*)ret->data, ret->size, 0);
  // memset(tex->data, 0, tex->size);s

  /// Probably Remove this if statement in future
  /// This are the things confirmed as working
  if (bpp == 3 || bpp == 4 || bpp == 1) {
    for (size_t x = 0; x < w; x++) {
      for (size_t y = 0; y < h; y++) {
        int dst_pos = ((((y >> 3) * ((int)tex_size.x >> 3) + (x >> 3)) << 6) +
                       ((x & 1) | ((y & 1) << 1) | ((x & 2) << 1) |
                        ((y & 2) << 2) | ((x & 4) << 2) | ((y & 4) << 3))) *
                      bpp;
        int src_pos = (y * w + x) * bpp;
        /// Best idea i had
        for (int i = 0; i < bpp; i++) {
          ((u8*)ret->data)[dst_pos + bpp - 1 - i] = pixels[src_pos + i];
        }
      }
    }
    C3D_TexFlush(ret);
  }

  ret->border = 0x00000000;
  C3D_TexSetWrap(ret, GPU_REPEAT, GPU_REPEAT);
#endif
}
TextureMap::TextureMap() {
  // pImg.Width() = pSize;
  // pImg.Height() = pSize;
  // pImg.pFmt = pImg.RGBA;
  // pImg..resize(pImg.Width() * pImg.Height() * 4);
}

TextureMap::~TextureMap() {}

void TextureMap::LoadFiles(const std::vector<std::string>& files) {
  for (auto& it : files) {
    AppendFile(it);
  }
}

void TextureMap::AppendFile(const std::string& path) {
  MapIcon icon;
  icon.pHash = TexID(path);
  icon.pUv.x = pXoff / pSize;
  icon.pUv.y = pYoff / pSize;
  icon.pUv.z = (pXoff + 16) / pSize;
  icon.pUv.w = (pYoff + 16) / pSize;
  PD::Image img;
  img.Load(path);
  if (img.Width() != 16 || img.Height() != 16) {
    return;
  }
  img.Convert(PD::Image::Format::RGBA);
  for (int x = 0; x < img.Width(); x++) {
    for (int y = 0; y < img.Height(); y++) {
      int src = (y * img.Width() + x) * 4;
      int dst = ((pYoff + y) * pImg.Width() + (pXoff + x)) * 4;
      pImg.data()[dst] = img.data()[src];
      pImg.data()[dst + 1] = img.data()[src + 1];
      pImg.data()[dst + 2] = img.data()[src + 2];
      pImg.data()[dst + 3] = img.data()[src + 3];
    }
  }
  pXoff += img.Width();
  if (pXoff + img.Width() > pImg.Width()) {
    pXoff = 0;
    pYoff += img.Height();
  }
  pIcons[icon.pHash] = icon;
}

void TextureMap::Bake() {
  LoadTexRGBA(&pTex, pImg.data(), pImg.Width(), pImg.Height());
}
}  // namespace CN