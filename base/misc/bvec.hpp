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