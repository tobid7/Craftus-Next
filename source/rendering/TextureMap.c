#include <3ds.h>
#include <citro3d.h>
#include <rendering/TextureMap.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <cn/Lgy.hpp>

void tileImage32(u32* src, u8* dst, int sizex, int sizez);

/**
 * Use LegacyLoader
 */
void Texture_Load(C3D_Tex* result, char* filename) {
  size_t l, w, h;
  void* data = Lgy_LoadImg2BufRGBA(filename, &l, &w, &h, true);
  Lgy_LoadTexRGBA(result, data, l, w, h);
}

// Grabbed from Citra Emulator (citra/src/video_core/utils.h)
static inline u32 morton_interleave(u32 x, u32 y) {
  u32 i = (x & 7) | ((y & 7) << 8);  // ---- -210
  i = (i ^ (i << 2)) & 0x1313;       // ---2 --10
  i = (i ^ (i << 1)) & 0x1515;       // ---2 -1-0
  i = (i | (i >> 7)) & 0x3F;
  return i;
}
// Grabbed from Citra Emulator (citra/src/video_core/utils.h)
static inline u32 get_morton_offset(u32 x, u32 y, u32 bytes_per_pixel) {
  u32 i = morton_interleave(x, y);
  unsigned int offset = (x & ~7) * 8;
  return (i + offset) * bytes_per_pixel;
}
// from sf2d
// https://github.com/xerpi/sf2dlib/blob/effe77ea81d21c26bad457d4f5ed8bb16ce7b753/libsf2d/source/sf2d_texture.c
void tileImage32(u32* src, u8* dst, int sizex, int sizey) {
  for (int j = 0; j < sizey; j++) {
    for (int i = 0; i < sizex; i++) {
      u32 coarse_y = j & ~7;
      u32 dst_offset = get_morton_offset(i, j, 4) + coarse_y * sizex * 4;

      u32 v = src[i + (sizey - 1 - j) * sizex];
      *(u32*)(dst + dst_offset) = v;
    }
  }
}
void Texture_TileImage8(uint8_t* src, uint8_t* dst, int size) {
  for (int j = 0; j < size; j++) {
    for (int i = 0; i < size; i++) {
      u32 coarse_y = j & ~7;
      u32 dst_offset = get_morton_offset(i, j, 1) + coarse_y * size;

      u8 v = src[i + (size - 1 - j) * size];
      *(dst + dst_offset) = v;
    }
  }
}
void downscaleImage(u8* data, int size) {
  int i, j;
  for (j = 0; j < size; j++) {
    for (i = 0; i < size; i++) {
      const u32 offset = (i + j * size) * 4;
      const u32 offset2 = (i * 2 + j * 2 * size * 2) * 4;
      data[offset + 0] = (data[offset2 + 0 + 0] + data[offset2 + 4 + 0] +
                          data[offset2 + size * 4 * 2 + 0] +
                          data[offset2 + (size * 2 + 1) * 4 + 0]) /
                         4;
      data[offset + 1] = (data[offset2 + 0 + 1] + data[offset2 + 4 + 1] +
                          data[offset2 + size * 4 * 2 + 1] +
                          data[offset2 + (size * 2 + 1) * 4 + 1]) /
                         4;
      data[offset + 2] = (data[offset2 + 0 + 2] + data[offset2 + 4 + 2] +
                          data[offset2 + size * 4 * 2 + 2] +
                          data[offset2 + (size * 2 + 1) * 4 + 2]) /
                         4;
      data[offset + 3] = (data[offset2 + 0 + 3] + data[offset2 + 4 + 3] +
                          data[offset2 + size * 4 * 2 + 3] +
                          data[offset2 + (size * 2 + 1) * 4 + 3]) /
                         4;
    }
  }
}

void Texture_MapInit(Texture_Map* map, const char** files, int num_files) {
  int locX = 0;
  int locY = 0;

  const int mipmapLevels = cn_options.MipMapLvl;
  const int maxSize = 4 * TEXTURE_MAPSIZE * TEXTURE_MAPSIZE;

  uint32_t* buffer = (uint32_t*)linearAlloc(maxSize);
  for (int i = 0; i < maxSize; i++) buffer[i] = 0x000000FF;

  int filei = 0;
  const char* filename = files[filei];
  int c = 0;
  while (filename != NULL && c < (TEXTURE_MAPTILES * TEXTURE_MAPTILES) &&
         filei < num_files) {
    uint32_t* image = NULL;
    size_t l, w, h;
    image = (uint32_t*)Lgy_LoadImg2BufRGBA(filename, &l, &w, &h, false);
    if (w == TEXTURE_TILESIZE && h == TEXTURE_TILESIZE && image != NULL) {
      for (int x = 0; x < TEXTURE_TILESIZE; x++) {
        for (int y = 0; y < TEXTURE_TILESIZE; y++) {
          buffer[(locX + x) + ((y + locY) * TEXTURE_MAPSIZE)] =
              __builtin_bswap32(
                  image[x + ((TEXTURE_TILESIZE - y - 1) * TEXTURE_TILESIZE)]);
        }
      }

      Texture_MapIcon* icon = &map->icons[c];
      icon->textureHash = Lgy_FastHash(filename);
      icon->u = 256 * locX;
      icon->v = 256 * locY;

      Lgy_Log("Stiched texture %s(hash: %u) at %d, %d\n", filename,
              icon->textureHash, locX, locY);
      Lgy_Log("Texture UV %s(hash: %u) at %d, %d\n", filename,
              icon->textureHash, icon->u, icon->v);

      locX += TEXTURE_TILESIZE;
      if (locX == TEXTURE_MAPSIZE) {
        locY += TEXTURE_TILESIZE;
        locX = 0;
      }
    } else {
      Lgy_Log("Image size(%d, %d) doesn't match or ptr null(internal error)\n'",
              w, h);
    }
    Lgy_DeleteImgBuf(image);
    filename = files[++filei];
    c++;
  }

  GSPGPU_FlushDataCache(buffer, maxSize);
  if (!C3D_TexInitWithParams(
          &map->texture, NULL,
          (C3D_TexInitParams){TEXTURE_MAPSIZE, TEXTURE_MAPSIZE, mipmapLevels,
                              GPU_RGBA8, GPU_TEX_2D, true}))
    Lgy_Log("Couldn't alloc texture memory\n");
  C3D_TexSetFilter(&map->texture, GPU_NEAREST, GPU_NEAREST);

  C3D_SyncDisplayTransfer(
      buffer, GX_BUFFER_DIM(TEXTURE_MAPSIZE, TEXTURE_MAPSIZE),
      map->texture.data, GX_BUFFER_DIM(TEXTURE_MAPSIZE, TEXTURE_MAPSIZE),
      (GX_TRANSFER_FLIP_VERT(1) | GX_TRANSFER_OUT_TILED(1) |
       GX_TRANSFER_RAW_COPY(0) | GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) |
       GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGBA8) |
       GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO)));

  int size = TEXTURE_MAPSIZE / 2;
  ptrdiff_t offset = TEXTURE_MAPSIZE * TEXTURE_MAPSIZE;

  u32* tiledImage = linearAlloc(size * size * 4);

  for (int i = 0; i < mipmapLevels; i++) {
    downscaleImage((u8*)buffer, size);

    tileImage32(buffer, (u8*)tiledImage, size, size);

    GSPGPU_FlushDataCache(tiledImage, size * size * 4);

    GX_RequestDma(tiledImage, ((u32*)map->texture.data) + offset,
                  size * size * 4);
    gspWaitForAnyEvent();

    offset += size * size;
    size /= 2;
  }

  linearFree(tiledImage);
  linearFree(buffer);
}

Texture_MapIcon Texture_MapGetIcon(Texture_Map* map, char* filename) {
  uint32_t h = Lgy_FastHash(filename);
  for (size_t i = 0; i < TEXTURE_MAPTILES * TEXTURE_MAPTILES; i++) {
    if (h == map->icons[i].textureHash) {
      return map->icons[i];
    }
  }
  return (Texture_MapIcon){0};
}