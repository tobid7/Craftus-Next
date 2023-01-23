#pragma once

#include <cstdint>
#include <memory>

namespace Base {
namespace Memory {
struct memory_metrics {
  uint32_t t_TotalAllocated = 0;
  uint32_t t_TotalFreed = 0;
  uint32_t t_CurrentlyAllocated() { return t_TotalAllocated - t_TotalFreed; }
};
size_t GetTotalAllocated();
size_t GetTotalFreed();
size_t GetCurrent();
} // namespace Memory
} // namespace Base