#pragma once

#include <palladium>

namespace CN {
class RCID {
 public:
  enum Type : PD::u16 {
    Invalid,
    Texture,     // Lithium Tex
    TextureRaw,  // Raw C3D Tex
    Sound,       // Sound (not used yet)
    Font,        // Bitmap Font (to be created)
    FontTTF,     // TTF Font (Lithium)
  };
  RCID() : pRCID(0), pType(0) {}
  RCID(const PD::u32& id) {
    // deciding use of static_cast and (u16) by the way
    // how to code looks cleaner at the end
    pRCID = static_cast<PD::u16>(id & 0xFFFF);
    pType = static_cast<PD::u16>(id >> 16);
  }
  RCID(const std::string& name, Type t) {
    PD::u32 h = PD::Strings::FastHash(name);
    // Combine the high and low bits into a 16 bit hash
    pRCID = (uint16_t)((h >> 16) ^ (h & 0xFFFF));
    pType = t;
  }

  operator PD::u32() {
    return (PD::u32)pRCID | static_cast<PD::u32>(pType << 16);
  }

  bool Valid() {
    // Keep in mind that neither the ID or type can be 0
    return pRCID != 0 && pType != 0;
  }

  // Probably Changing this btw
  PD::u16 pRCID;
  PD::u16 pType;
};
class ResourceMgr {
 public:
  struct Resource {
    PD::u32 ID = 0;  // Just to be sure
    void* Ptr = nullptr;
    void* RawPtr = 0;
  };
  ResourceMgr() = default;
  ~ResourceMgr() = default;

  /**
   * Crfatus Next Resource laod function
   * basically when you dont pass a type it will try to
   * auto determinate what format it is...
   * Note that it is best to self declare the type (cause the
   * engine does not know if you want a raw or a lithium tex for example)
   */
  static PD::u32 Load(const std::string& path, RCID::Type type = RCID::Invalid);
  static void Push(PD::u32 id, void* rc, RCID::Type type = RCID::Invalid);
  static void LoadAsync(const std::string& path,
                        RCID::Type type = RCID::Invalid);
  // static void SetContext(PD::Context& ctx) { pCtx = &ctx; }

  static Resource* Get(const PD::u32& id) {
    if (pResources.count(id)) {
      return &pResources[id];
    }
    return nullptr;
  }

  static PD::Li::Font* GetFontTTF(PD::u32 id) {
    /** Modern c++ is best thing ever created */
    auto rc = Get(id);
    if (rc && RCID(rc->ID).pType == RCID::FontTTF) {
      return reinterpret_cast<PD::Li::Font*>(rc->Ptr);
    }
    return nullptr;
  }

  static PD::Li::Texture* GetTex(PD::u32 id) {
    /** Modern c++ is best thing ever created */
    auto rc = Get(id);
    if (rc && RCID(rc->ID).pType == RCID::Texture) {
      return reinterpret_cast<PD::Li::Texture*>(rc->Ptr);
    }
    return nullptr;
  }

  static std::unordered_map<PD::u32, Resource> pResources;
  // static PD::Context* pCtx;
  // static std::vector<RcTask> pTasks;
};
}  // namespace CN