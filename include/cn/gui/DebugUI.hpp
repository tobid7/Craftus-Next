#pragma once

#include <palladium>

namespace CN {
class DebugUI {
 public:
  DebugUI();
  ~DebugUI();

  void Line(const std::string& l);
  void Log(const std::string& l);
  void DrawInto(PD::Li::Drawlist& list);

  std::array<std::string, 15> pInfoLines;
  std::array<std::string, 20> pLogLines;
  int pInfoSlot;
};
}  // namespace CN