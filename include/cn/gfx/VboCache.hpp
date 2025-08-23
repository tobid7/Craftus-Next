#pragma once

#include <3ds.h>

namespace TME {
class VboBlock {
 public:
  VboBlock() {}
  VboBlock(const VboBlock&) = delete;
  VboBlock& operator=(const VboBlock&) = delete;
  VboBlock(size_t size) : pSize(size) { pData = linearAlloc(size); }
  ~VboBlock() {
    if (pData) {
      linearFree(pData);
      pSize = 0;
    }
  }

  size_t pSize = 0;
  void* pData = nullptr;
};
class VboCache {
 public:
  VboCache() = default;
  ~VboCache() = default;

  static void Init() {}
  static void Deinit() {}
  static VboBlock* New(size_t size) { return new VboBlock(size); }
  static void Delete(VboBlock* block) { delete block; }
};
}  // namespace TME