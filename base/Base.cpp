#include <Base.hpp>

#ifndef BASE_NAME
#define BASE_NAME "NULL"
#endif
#ifndef BASE_VERSION
#define BASE_VERSION "NULL"
#endif
#ifndef BASE_PLATFORM
#define BASE_PLATFORM "NULL"
#endif

namespace Base {
void Init() {
#if (defined(__BASE_DESKTOP__) || defined(__BASE_NX__))
#elif defined(__BASE_CTR__)
#else
  exit(EXIT_FAILURE);
#endif
}

void Exit() {}

std::string GetVersion() { return BASE_VERSION; }

std::string GetName() { return BASE_NAME; }

std::string GetPlatform() { return BASE_PLATFORM; }
} // namespace Base
