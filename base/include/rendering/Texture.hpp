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
#include <misc/Color.hpp>
#include <misc/bvec.hpp>
#include <rendering/Vertex.hpp>
#include <string>

namespace Base {
class Texture {
public:
  virtual ~Texture() {}
  virtual void LoadFile(std::string path) = 0;
  virtual void LoadBuffer(unsigned char *buffer, int w, int h, int bpp) = 0;
  virtual void LoadPixels(unsigned char *buffer, int w, int h, int bpp) = 0;
  virtual int GetRegId() = 0;
  virtual void Bind() = 0;
  virtual bvec2i GetSize() = 0;

protected:
  int registerid = 0; // 0 means non existing
  int shaderreg = 0;
};
} // namespace Base