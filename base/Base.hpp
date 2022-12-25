#pragma once
#include <StealConsole.hpp>
#include <TextureMapper.hpp>
#include <iostream>
#include <string>
#include <stringcheats.hpp>
#include <ui/Gui.hpp>
#include <Renderer.hpp>
#include <Shader.hpp>
#include <Texture.hpp>
#include <VArray.hpp>
#include <Timer.hpp>

//
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
//
namespace Base {
struct Vec2i {
  Vec2i(int ix = 0, int iy = 0) {
    x = ix;
    y = iy;
  }
  int x;
  int y;
};
struct Vec2f {
  Vec2f(float ix = 0, float iy = 0) {
    x = ix;
    y = iy;
  }
  float x;
  float y;
};

struct Vec3i {
  Vec3i(int ix = 0, int iy = 0, int iz = 0) {
    x = ix;
    y = iy;
    z = iz;
  }
  int x;
  int y;
  int z;
};
struct Vec3f {
  Vec3f(float ix = 0, float iy = 0, float iz = 0) {
    x = ix;
    y = iy;
    z = iz;
  }
  float x;
  float y;
  float z;
};

enum RenderApi {
  CITRO3D, // only supported on 3ds
  OPENGL,  // Supported on Switch and PC
};

extern RenderApi _rnd_api;

void Init();
void Exit();
std::string GetVersion();
std::string GetName();
std::string GetPlatform();
} // namespace Base