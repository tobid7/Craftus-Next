#pragma once
#include <Error.hpp>

namespace Base {
class Texture {
public:
  void LD7();
  BaseErrorCode Load(std::string file, int register_ = 0) {
    return s_instance->I_Load(file, register_);
  }
  BaseErrorCode LoadMem(std::vector<unsigned char> mem, int register_) {
    return s_instance->I_LoadMem(mem, register_);
  }
  BaseErrorCode Bind() { return s_instance->I_Bind(); }
  BaseErrorCode Destroy() { return s_instance->I_Destroy(); }
  float GetW() { return s_instance->I_GetW(); }
  float GetH() { return s_instance->I_GetH(); }
  unsigned int GetRegID() { return s_instance->I_GetRegID(); }

protected:
  virtual BaseErrorCode I_Load(std::string file, int register_ = 0) = 0;
  virtual BaseErrorCode I_LoadMem(std::vector<unsigned char> mem,
                              int register_ = 0) = 0;
  virtual BaseErrorCode I_Bind() = 0;
  virtual BaseErrorCode I_Destroy() = 0;
  virtual float I_GetW() = 0;
  virtual float I_GetH() = 0;
  virtual unsigned int I_GetRegID() = 0;

private:
  static Texture *s_instance;
};
} // namespace Base