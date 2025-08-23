#include <cn/misc/Fs.hpp>

namespace TME {
void InitFS() {
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/logs");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/resourcepacks");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/saves");
  if (std::filesystem::exists("sdmc:/3ds/CraftusNext/logs/log.txt")) {
    std::filesystem::rename(
        "sdmc:/3ds/CraftusNext/logs/log.txt",
        "sdmc:/3ds/CraftusNext/logs/log_" + std::to_string(time(0)) + ".txt");
  }
}
}  // namespace TME