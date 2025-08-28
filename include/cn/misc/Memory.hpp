#pragma once

#include <3ds.h>

#include <palladium>

namespace CN {
namespace Memory {
void* New(size_t size, const std::string& file, int line);
void Delete(void* ptr, const std::string& file, int line);
}  // namespace Memory
class MemMgr {
 public:
  MemMgr() = default;
  ~MemMgr() = default;

  enum Type {
    Type_Unk,  // Temp
    Type_Vbo,  // Linear
    Type_Tex,  // Linear
    Type_Snd,  // Linear
  };

  struct Data {
    Data() {}
    Data(uintptr_t a, size_t s, bool l = false, Type t = Type_Unk) {
      pLinear = l;
      pType = t;
      pAddr = a;
      pSize = s;
    }
    bool pLinear = false;
    Type pType = Type_Unk;
    size_t pSize = 0;
    uintptr_t pAddr = 0;
  };

  template <typename T>
  static T* New(size_t num, Type t = Type_Unk) {
    T* ret = new T[num];
    pAllocations[(uintptr_t)ret] =
        Data((uintptr_t)ret, sizeof(T) * num, false, t);
    return ret;
  }

  template <typename T>
  static void Delete(T* mem) {
    delete[] mem;
    pAllocations.erase((uintptr_t)mem);
  }

  template <typename T>
  static T* NewLin(size_t num, Type t = Type_Unk) {
    T* ret = (T*)linearAlloc(sizeof(T) * num);
    pAllocations[(uintptr_t)ret] =
        Data((uintptr_t)ret, sizeof(T) * num, true, t);
    return ret;
  }

  static void* NewLinLgy(size_t size, Type t = Type_Unk) {
    void* ret = linearAlloc(size);
    pAllocations[(uintptr_t)ret] = Data((uintptr_t)ret, size, true, t);
    return ret;
  }

  template <typename T>
  static void DeleteLin(T* mem) {
    linearFree((void*)mem);
    pAllocations.erase((uintptr_t)mem);
  }

  static size_t CountOf(Type t, bool linear = false,
                        size_t* num_allcos = nullptr) {
    size_t ret = 0;
    size_t c = 0;
    for (auto& it : pAllocations) {
      if (it.second.pLinear == linear && it.second.pType == t) {
        ret += it.second.pSize;
        c++;
      }
    }
    if (num_allcos) {
      *num_allcos = c;
    }
    return ret;
  }

  static std::unordered_map<uintptr_t, Data> pAllocations;
};
}  // namespace CN