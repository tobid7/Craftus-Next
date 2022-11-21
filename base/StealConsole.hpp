#pragma once
#include <sstream>
#include <string>

namespace Base {
class StealConsole {
public:
  StealConsole();
  ~StealConsole();
  std::string GetStdout();

private:
  std::stringstream stolen_stdout;
};
} // namespace Base