#pragma once

/**
 * Legacy Access exposed functions
 */

#include <3ds.h>
#include <citro3d.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

void* Lgy_DebugMalloc(size_t size, const char* f, int l);
void Lgy_DebugFree(void* ptr, const char* f, int l);

#ifdef CN_DEBUG_MEMORY
#define lgy_malloc(x) Lgy_DebugMalloc(x, __FILE__, __LINE__)
#define lgy_free(x) Lgy_DebugFree(x, __FILE__, __LINE__)
#else
#define lgy_malloc(x) malloc(x)
#define lgy_free(x) free(x)
#endif

typedef struct Damage_ {
  const char* cause;  // string literal or C string
  int time;           // duration
} Damage;

typedef struct {
  size_t size;
  void* memory;
  void* cxx_addr;
} VBO_Block;

typedef struct {
  float Fov;
  bool ViewBobbing;
  bool Clouds;
  bool Hand;
  int MipMapLvl;
} GameOptions;

typedef enum {
  MemType_Unk,
  MemType_Vbo,
  MemType_Tex,
  MemType_Snd,
} MemType;

extern GameOptions cn_options;

/*typedef enum {
  Direction_West,
  Direction_East,
  Direction_Bottom,
  Direction_Top,
  Direction_North,
  Direction_South,
  Direction_Invalid
} Direction;

typedef enum { Axis_X, Axis_Y, Axis_Z } Axis;*/

/*typedef struct {
  int x, y, z;
  float distSqr;
  Direction direction;
} Raycast_Result;*/

void Lgy_OvertimeDamage(const char* cause, int time, void* plr);
u32 Lgy_FastHash(const char* str);
void* Lgy_LoadImg2BufRGBA(const char* path, size_t* len, size_t* w, size_t* h,
                          bool flip);
void Lgy_DeleteImgBuf(void* mem);
void Lgy_LoadTexRGBA(C3D_Tex* ret, void* data, size_t len, size_t w, size_t h);
/**
 * Setup Craftus Next Filesystem (if not already created)
 */
void Lgy_InitFS();
void Lgy_Log(const char* fmt, ...);
void Lgy_Crash(const char* reason, ...);
void Lgy_ExecCxxTest();
void Lgy_InitCxxExceptionScreen();
VBO_Block Lgy_Vbo_Alloc(size_t size);
void Lgy_Vbo_Free(VBO_Block block);
void Lgy_GameOptionsInit();
void Lgy_GameOptionsSave();
void Lgy_Splash();
char* Lgy_File2Str(const char* path, size_t* lines);
void Lgy_Render2D();
void Lgy_StartFrame(int w, int h);
void Lgy_InitPalladium();
u32 Lgy_LoadTexture(const char* path);
void Lgy_GetTextureBounds(u32 texid, int* x, int* y);
void Lgy_DrawTexElement(u32 texid, int x, int y, int w, int h, int xy, int cy,
                        int cw, int ch);
void Lgy_Render(int w, int h);
void Lgy_DrawText(int x, int y, bool shaddow, const char* text, ...);
void Lgy_Finish2D();
void Lgy_DynScale(float scale);
void Lgy_DrawIcon(uint8_t block, uint8_t metadata, int x, int y);
void Lgy_HandleUI(void* gs_ptr);
void Lgy_UpdateInput();
void* Lgy_LinearAlloc(size_t size, MemType type);
void Lgy_Free(void* mem);
void Lgy_InitRenderStage(void* world, void* gs, void* player, void* cw);
void Lgy_ExitRenderStage();
void Lgy_Render_(void* world, void* gs);
void Lgy_LoadResourcesAsync(void* queue, int item, void* data);
void Lgy_DebugUI_Text(const char* fmt, ...);
void Lgy_DebugUI_Log(const char* fmt, ...);
#ifdef __cplusplus
}
#endif