/*  ____            __ _                   _   _           _   
*  / ___|_ __ __ _ / _| |_ _   _ ___      | \ | | _____  _| |_ 
* | |   | '__/ _` | |_| __| | | / __|_____|  \| |/ _ \ \/ / __|
* | |___| | | (_| |  _| |_| |_| \__ \_____| |\  |  __/>  <| |_ 
*  \____|_|  \__,_|_|  \__|\__,_|___/     |_| \_|\___/_/\_\\__|
*                                                              
*  _   _ ____ ___      ____ _____ ______ _____             
* | \ | |  _ \_ _|    |  _ \___  / /  _ \___  |_   ____  __
* |  \| | |_) | |_____| | | | / / /| | | | / /\ \ / /\ \/ /
* | |\  |  __/| |_____| |_| |/ / / | |_| |/ /  \ V /  >  < 
* |_| \_|_|  |___|    |____//_/_/  |____//_/    \_/  /_/\_\
* Copyright (C) 2022-2023 Tobi-D7, RSDuck, Onixiya, D7vx-Dev, NPI-D7
*/
#pragma once
#include <StealConsole.hpp>
#include <Texture.hpp>
#include <Timer.hpp>
#include <iostream>
#include <misc/memory.hpp>
#include <rendering/Renderer_Def.hpp>
#include <string>
#include <stringcheats.hpp>

#include <objects/Sprite.hpp>

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

void Init();
void Exit();
std::string GetVersion();
std::string GetName();
std::string GetPlatform();
} // namespace Base