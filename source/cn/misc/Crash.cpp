#include <cn/misc/Crash.hpp>

namespace CN {
std::ofstream log;
bool logFailed = false;
void Log(const std::string& text) {
  if (logFailed) return;
  if (!log.is_open()) {
    log.open("sdmc:/3ds/CraftusNext/logs/log.txt");
    logFailed = !log.is_open();
  }
  log << text << std::endl;
}

void Crash(const std::string& reason) {
  std::fstream off("sdmc:/3ds/CraftusNext/logs/log.txt",
                   std::ios::out | std::ios::app);
  off << reason;
  off.close();
  throw(std::runtime_error(reason));
}
}  // namespace CN