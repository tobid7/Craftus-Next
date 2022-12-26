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

std::map<int, std::string> codes = {
    {0, "(0) -> Success"},
    {1, "(1) -> Error (Unknown/Boolean-false)"},
    {2, "(2) -> Texture Not Found"},
    {NULL, "What are you trying to do?"},
};
std::vector<std::string> errors;

namespace Base {
RenderApi _rnd_api;
void Init() {
#if (defined(__BASE_DESKTOP__) || defined(__BASE_NX__))
  _rnd_api = RenderApi::OPENGL;
#elif defined(__BASE_CTR__)
  _rnd_api = RenderApi::CITRO3D;
#else
  exit(EXIT_FAILURE);
#endif
}

void Exit() {}

std::string GetVersion() { return BASE_VERSION; }

std::string GetName() { return BASE_NAME; }

std::string GetPlatform() { return BASE_PLATFORM; }
} // namespace Base
