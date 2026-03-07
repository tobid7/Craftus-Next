#include <cn/misc/Fs.hpp>

namespace CN {
void InitFS() {
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/logs");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/resourcepacks");
  std::filesystem::create_directories("sdmc:/3ds/CraftusNext/saves");
  if (std::filesystem::exists("sdmc:/3ds/CraftusNext/logs/log.txt")) {
    std::error_code e;
    if (std::filesystem::exists("sdmc:/3ds/CraftusNext/logs/log-last.txt"))
      std::filesystem::remove("sdmc:/3ds/CraftusNext/logs/log-last.txt", e);
    std::filesystem::rename("sdmc:/3ds/CraftusNext/logs/log.txt",
                            "sdmc:/3ds/CraftusNext/logs/log-last.txt", e);
  }
}
}  // namespace CN