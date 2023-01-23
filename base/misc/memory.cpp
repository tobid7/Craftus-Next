#include <misc/memory.hpp>

static Base::Memory::memory_metrics metrics;

void *operator new(size_t size) {
  metrics.t_TotalAllocated += size;
  return malloc(size);
}

void operator delete(void *memory, size_t size) {
  metrics.t_TotalFreed += size;
  free(memory);
}
namespace Base {
namespace Memory {
size_t GetTotalAllocated() { return metrics.t_TotalAllocated; }

size_t GetTotalFreed() { return metrics.t_TotalFreed; }

size_t GetCurrent() { return metrics.t_CurrentlyAllocated(); }
} // namespace Memory
} // namespace Base