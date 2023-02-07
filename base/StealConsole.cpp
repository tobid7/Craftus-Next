#include <StealConsole.hpp>
#include <iostream>

namespace Base {
StealConsole::StealConsole() {
  std::streambuf *old = std::cout.rdbuf(this->stolen_stdout.rdbuf());
  if (old) {
    // To prevent from unused error
  }
}

StealConsole::~StealConsole() {
  // Do Nothing Here
}

std::string StealConsole::GetStdout() {
  if (this->stolen_stdout.str().length() < 90000) {
    return this->stolen_stdout.str();
  } else {
    return this->stolen_stdout.str().substr(stolen_stdout.str().length() -
                                            90000);
  }
  return "";
}
} // namespace Base