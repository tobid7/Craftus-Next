#pragma once

#include <palladium>

namespace CN {
namespace Memory {
void* New(size_t size, const std::string& file, int line);
void Delete(void* ptr, const std::string& file, int line);
}  // namespace Memory
}  // namespace CN