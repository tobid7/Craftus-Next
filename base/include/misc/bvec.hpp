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

struct bvec2i {
  bvec2i(int ix = 0, int iy = 0) {
    x = ix;
    y = iy;
  }
  int x;
  int y;
};
struct bvec2f {
  bvec2f(float ix = 0, float iy = 0) {
    x = ix;
    y = iy;
  }
  bvec2f(bvec2i vc) {
    x = vc.x;
    y = vc.y;
  }
  float x;
  float y;
};

struct bvec3i {
  bvec3i(int ix = 0, int iy = 0, int iz = 0) {
    x = ix;
    y = iy;
    z = iz;
  }
  int x;
  int y;
  int z;
};
struct bvec3f {
  bvec3f(float ix = 0, float iy = 0, float iz = 0) {
    x = ix;
    y = iy;
    z = iz;
  }
  float x;
  float y;
  float z;
};

struct bvec4i {
  bvec4i(int ix = 0, int iy = 0, int iz = 0, int iw = 0) {
    x = ix;
    y = iy;
    z = iz;
    w = iw;
  }
  int x;
  int y;
  int z;
  int w;
};
struct bvec4f {
  bvec4f(float ix = 0, float iy = 0, float iz = 0, float iw = 0) {
    x = ix;
    y = iy;
    z = iz;
    w = iw;
  }
  float x;
  float y;
  float z;
  float w;
};