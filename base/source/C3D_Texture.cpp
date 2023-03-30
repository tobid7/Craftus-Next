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
#include <external/stb_image.h>
#include <iostream>
#include <rendering/c3d/C3D_Texture.hpp>

#include <vector>

namespace Base {

C3D_Texture::~C3D_Texture() {
}

void C3D_Texture::LoadFile(std::string path) {
  
}

void C3D_Texture::LoadBuffer(unsigned char *buffer, int w, int h, int bpp) {
}

void C3D_Texture::LoadPixels(unsigned char *buffer, int w, int h, int bpp) {
  
}

int C3D_Texture::GetRegId() { return texture; }

void C3D_Texture::Bind() {

}

bvec2i C3D_Texture::GetSize() { return m_size; }
} // namespace Base