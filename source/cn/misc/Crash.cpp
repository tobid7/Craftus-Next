#include <cn/misc/Crash.hpp>

namespace TME {
void Log(const std::string& text) {
  std::fstream off("sdmc:/3ds/CraftusNext/logs/log.txt",
                   std::ios::out | std::ios::app);
  off << text << std::endl;
  off.close();
}

void Crash(const std::string& reason) {
  std::fstream off("sdmc:/3ds/CraftusNext/logs/log.txt",
                   std::ios::out | std::ios::app);
  off << reason;
  off.close();
  throw(std::runtime_error(reason));
}
}  // namespace TME