#include <map>
#include <misc/memory.hpp>

static Base::Memory::memory_metrics metrics;

void *operator new(size_t size) {
  void *ptr = malloc(size);
  metrics.t_TotalAllocated += size;
  return ptr;
}

void operator delete(void *memory, size_t size) {
  metrics.t_TotalFreed += size;
  free(memory);
}

int allocations = 0;
int total_size = 0;
std::map<void *, size_t> sizes;

void *operator new[](size_t size) {
  allocations++;
  total_size += size;
  void *ptr = malloc(size);
  sizes[ptr] = size;
  metrics.t_TotalAllocated += size;
  return ptr;
}

void operator delete[](void *ptr) {
  allocations--;
  total_size -= sizes[ptr];
  metrics.t_TotalFreed += sizes[ptr];
  sizes.erase(ptr);
  free(ptr);
}

namespace Base {

namespace Memory {

size_t GetTotalAllocated() { return metrics.t_TotalAllocated; }

size_t GetTotalFreed() { return metrics.t_TotalFreed; }

size_t GetCurrent() { return metrics.t_CurrentlyAllocated(); }
} // namespace Memory
} // namespace Base