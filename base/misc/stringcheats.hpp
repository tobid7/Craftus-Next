#pragma once
#include <algorithm>
#include <cctype>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <memory>
#include <sstream>
#include <stdarg.h>
#include <string.h>
#include <string>

#include <vector>

#ifdef _MSC_VER
// not #if defined(_WIN32) || defined(_WIN64) because we have strncasecmp in
// mingw
#define strncasecmp _strnicmp
#define strcasecmp _stricmp
#define vscprintf _vscprintf

/*
 * asprintf, vasprintf:
 * MSVC does not implement these, thus we implement them here
 * GNU-C-compatible compilers implement these with the same names, thus we
 * don't have to do anything
 */
inline int vasprintf(char **strp, const char *format, va_list ap) {
  int len = vscprintf(format, ap);
  if (len == -1)
    return -1;
  char *str = (char *)malloc((size_t)len + 1);
  if (!str)
    return -1;
  int retval = vsnprintf(str, len + 1, format, ap);
  if (retval == -1) {
    free(str);
    return -1;
  }
  *strp = str;
  return retval;
}

inline int asprintf(char **strp, const char *format, ...) {
  va_list ap;
  va_start(ap, format);
  int retval = vasprintf(strp, format, ap);
  va_end(ap);
  return retval;
}
#else
#include <unistd.h>
#endif

namespace Base {
namespace string_hacks {
inline std::string ToLowerCase(std::string in) {
  std::transform(in.begin(), in.end(), in.begin(),
                 [](unsigned char c) { return std::tolower(c); });
  return in;
}

/*inline std::string FormatString(std::string fmt_str, ...) {
  va_list ap;
  char *fp = NULL;
  va_start(ap, fmt_str);
  vasprintf(&fp, fmt_str.c_str(), ap);
  va_end(ap);
  std::unique_ptr<char, decltype(free) *> formatted(fp, free);
  return std::string(formatted.get());
}*/

inline bool NameIsEndingWith(const std::string &name,
                             const std::vector<std::string> &extensions) {
  if (name.substr(0, 2) == "._")
    return false;

  if (name.size() == 0)
    return false;

  if (extensions.size() == 0)
    return true;

  for (int i = 0; i < (int)extensions.size(); i++) {
    const std::string ext = extensions.at(i);
    if (strcasecmp(name.c_str() + name.size() - ext.size(), ext.c_str()) == 0)
      return true;
  }

  return false;
}
template <class T> T GetFileName(T const &path, T const &delims = "/\\") {
  return path.substr(path.find_last_of(delims) + 1);
}
template <class T> T remove_ext(T const &filename) {
  typename T::size_type const p(filename.find_last_of('.'));
  return p > 0 && p != T::npos ? filename.substr(0, p) : filename;
}

template <typename T> std::string int2hex(T i) {
  std::stringstream stream;
  stream << "0x" << std::setfill('0') << std::setw(sizeof(T) * 2) << std::hex
         << i;
  return stream.str();
}
inline std::string FormatBytes(size_t bytes) {
  char out[32];

  if (bytes == 1)
    snprintf(out, sizeof(out), "%ld Byte", bytes);

  else if (bytes < 1024)
    snprintf(out, sizeof(out), "%ld Bytes", bytes);

  else if (bytes < 1024 * 1024)
    snprintf(out, sizeof(out), "%.1f KB", (float)bytes / 1024);

  else if (bytes < 1024 * 1024 * 1024)
    snprintf(out, sizeof(out), "%.1f MB", (float)bytes / 1024 / 1024);

  else
    snprintf(out, sizeof(out), "%.1f GB", (float)bytes / 1024 / 1024 / 1024);

  return out;
}
} // namespace string_hacks
} // namespace Base