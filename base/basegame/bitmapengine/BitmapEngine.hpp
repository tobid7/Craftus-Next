#pragma once
#include <bmp.hpp>
#include <string>
#include <vector>

#include <BaseRender.hpp>
#include <bmpconverter.hpp>

#define UNPACK_RGBA(col) (uint8_t)(col >> 24), (col >> 16), (col >> 8), (col)
#define UNPACK_BGRA(col) (uint8_t)(col >> 8), (col >> 16), (col >> 24), (col)

namespace Base {
enum Encoder {
  BITMAP, ///< Encode Data to Bitmap
  DIRECT, ///< Encode Direct to Framebuffer(No Decoder Required) //Not able to
          ///< use in base engine
};

enum Decoder {
  BITMAP2PNG2TEX, ///< Decode Bitmap end Convert to Png, then Tex (Very Slow)
  BITMAP2TEX,     ///< Decode and Encode to Tex (Currently Fastest)
};

class BitmapPrinter {
public:
  BitmapPrinter(int w, int h);
  ~BitmapPrinter();
  bool DecodeBMPFile(std::string file);
  bool DecodePNGFile(std::string file);

  void SetDecoder(Decoder deccc) { decc = deccc; }
  void DrawPixel(int x, int y, uint8_t b, uint8_t g, uint8_t r, uint8_t a);
  void DrawRect(int x, int y, int w, int h, uint8_t line_w, uint8_t b,
                uint8_t g, uint8_t r, uint8_t a);
  void DrawRectFilled(int x, int y, int w, int h, uint8_t b, uint8_t g,
                      uint8_t r, uint8_t a);
  void DrawBitmap(int x, int y, BMP map);
  void UsePreMap(BMP map);
  void UsePrePrintMap(BitmapPrinter printmap);
  BMP GetBitmap() { return bitmap; }
  void SaveBmp(std::string name);
  void SavePng(std::string name);

  bool UpdateScreenF(int framerate);
  bool UpdateScreen();
  void Clear(uint8_t b = 0, uint8_t g = 0, uint8_t r = 0, uint8_t a = 255);
  void ClearBlank();
  //BaseTexture GetImage();
  /// Test to Find out The Best Settings for BitmapPrinter
  void Benchmark();
  /// Setup the Benchmark
  /// \param framerate The Fps of the ScreenUpdates
  void SetupBenchmark(int framerate);
  bool IsBenchmarkRunning() { return this->benchmark; }

private:
  // funcs
  bool Decode(Decoder deccc);
  // parameter
  int frame = 0;
  //BaseTexture renderframe;
  bool isscreen = false;
  BMP bitmap = BMP(
      20, 20,
      true); // Need to Set e Predefined Bitmap. If not the System will Crash.
  BMP blank = BMP(
      20, 20,
      true); // Need to Set e Predefined Bitmap. If not the System will Crash.

  ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Benchmark Stuff;
  int testfpsd;
  bool benchmark = false;
  bool setupbenchmark;
  float frametime = 0;
  uint64_t lastTime = 0;
  float dtt = 0.f;
  float dtt2 = 0.f;
  float dtt3 = 0.f;
  float timer = 0;
  float mhdtt = 0;
  float mdtt2;
  float mdtt3;

  float fpsClock = 0.f;
  int frameCounter = 0, fps = 0;

  std::vector<float> hdttt;
  std::vector<float> hdttt2;
  std::vector<float> hdttt3;
  std::vector<int> fpscountc;
  int renderedframes = 0;
  int testfps = 60;
  Encoder encc = Encoder::BITMAP;
  Decoder decc = Decoder::BITMAP2TEX;
  ////////////////////////////////////////////////////////////////////////////////////////////////
};
} // namespace Base