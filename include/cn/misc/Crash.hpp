#pragma once

#include <palladium>

namespace CN {
void Log(const std::string& text);
template <typename... Args>
void Log(std::format_string<Args...> fmt, Args&&... args) {
  Log(std::format(fmt, std::forward<Args>(args)...));
}
void Crash(const std::string& reason);
}  // namespace CN

#define LOG(x, ...) CN::Log("[{}:{}:{}]: " x, __FILE__, __LINE__, __FUNCTION__, ##__VA_ARGS__)