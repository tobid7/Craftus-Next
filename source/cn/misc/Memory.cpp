#include <cn/Lgy.hpp>
#include <cn/misc/Memory.hpp>

namespace CN {
std::unordered_map<uintptr_t, MemMgr::Data> MemMgr::pAllocations;
namespace Memory {
constexpr PD::u32 memsig = 0x7747feed;
void* New(size_t size, const std::string& file, int line) {
  PD::u32* ret = (PD::u32*)malloc(size + 12);
  ret[0] = memsig;
  ret[1] = (PD::u32)size;
  ret[2 + (size + 3) / 4] = memsig;
  Lgy_Log("[CN] %p = malloc(%zu) in %s:%d", ret, size, file.c_str(), line);
  return (void*)(ret + 2);
}
void Delete(void* ptr, const std::string& file, int line) {
  PD::u32* r = ((PD::u32*)ptr) - 2;
  size_t size = r[1];
  Lgy_Log("[CN] free(%p) %zu bytes in %s:%d", ptr, size, file.c_str(), line);
  if (r[0] != memsig || r[2 + (size + 3) / 4] != memsig) {
    throw std::runtime_error("[CN] Heap Corruption at " + file + ":" +
                             std::to_string(line));
  }
  free(r);
}
}  // namespace Memory
}  // namespace CN