#pragma once
#include <iostream>
#include <map>
#include <string>
#include <vector>

typedef int BaseErrorCode;
extern std::map<int, std::string> codes;
extern std::vector<std::string> errors;

namespace Base {
inline std::string DecodeError(BaseErrorCode code) { return codes.at(code); }

inline void AddError(BaseErrorCode code) { errors.push_back(DecodeError(code)); }

inline void PrintError(BaseErrorCode code) {
  std::cout << DecodeError(code) << std::endl;
}

inline BaseErrorCode PrintErrors() {
  if (errors.size() < 1) {
    return 1;
  }
  for (std::string err : errors) {
    std::cout << err << std::endl;
  }
  return 0;
}
} // namespace Base