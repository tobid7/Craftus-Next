#include <bmpconverter.hpp>
#include <external/lodepng.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include <external/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <external/stb_image_write.h>

namespace BitmapConverter {

// returns 0 if all went ok, non-0 if error
// output image is always given in RGBA (with alpha channel), even if it's a BMP
// without alpha channel
unsigned decodeBMP(std::vector<unsigned char> &image, unsigned &w, unsigned &h,
                   const std::vector<unsigned char> &bmp) {
  static const unsigned MINHEADER = 54; // minimum BMP header size

  if (bmp.size() < MINHEADER)
    return -1;
  if (bmp[0] != 'B' || bmp[1] != 'M')
    return 1; // It's not a BMP file if it doesn't start with marker 'BM'
  unsigned pixeloffset = bmp[10] + 256 * bmp[11]; // where the pixel data starts
  // read width and height from BMP header
  w = bmp[18] + bmp[19] * 256;
  h = bmp[22] + bmp[23] * 256;
  // read number of channels from BMP header
  if (bmp[28] != 24 && bmp[28] != 32)
    return 2; // only 24-bit and 32-bit BMPs are supported.
  unsigned numChannels = bmp[28] / 8;

  // The amount of scanline bytes is width of image times channels, with extra
  // bytes added if needed to make it a multiple of 4 bytes.
  unsigned scanlineBytes = w * numChannels;
  if (scanlineBytes % 4 != 0)
    scanlineBytes = (scanlineBytes / 4) * 4 + 4;

  unsigned dataSize = scanlineBytes * h;
  if (bmp.size() < dataSize + pixeloffset)
    return 3; // BMP file too small to contain all pixels

  image.resize(w * h * 4);

  /*
  There are 3 differences between BMP and the raw image buffer for LodePNG:
  -it's upside down
  -it's in BGR instead of RGB format (or BRGA instead of RGBA)
  -each scanline has padding bytes to make it a multiple of 4 if needed
  The 2D for loop below does all these 3 conversions at once.
  */
  for (unsigned y = 0; y < h; y++)
    for (unsigned x = 0; x < w; x++) {
      // pixel start byte position in the BMP
      unsigned bmpos =
          pixeloffset + (h - y - 1) * scanlineBytes + numChannels * x;
      // pixel start byte position in the new raw image
      unsigned newpos = 4 * y * w + 4 * x;
      if (numChannels == 3) {
        image[newpos + 0] = bmp[bmpos + 2]; // R
        image[newpos + 1] = bmp[bmpos + 1]; // G
        image[newpos + 2] = bmp[bmpos + 0]; // B
        image[newpos + 3] = 255;            // A
      } else {
        image[newpos + 0] = bmp[bmpos + 2]; // R
        image[newpos + 1] = bmp[bmpos + 1]; // G
        image[newpos + 2] = bmp[bmpos + 0]; // B
        image[newpos + 3] = bmp[bmpos + 3]; // A
      }
    }
  return 0;
}

std::vector<unsigned char> ConvertBMP2PNGFile(std::string filename) {

  std::vector<unsigned char> bmp;
  lodepng::load_file(bmp, filename);

  std::vector<unsigned char> image;
  unsigned w, h;
  unsigned error = BitmapConverter::decodeBMP(image, w, h, bmp);

  if (error) {
    std::cout << "BMP decoding error " << error << std::endl;
  }

  std::vector<unsigned char> png;
  error = lodepng::encode(png, image, w, h);

  if (error) {
    std::cout << "PNG encoding error " << error << ": "
              << lodepng_error_text(error) << std::endl;
  }

  return png;
}

std::vector<unsigned char> ConvertPNG2BMPFile(std::string filename) {
  /*std::vector<unsigned char> image;
  unsigned width, height;
  unsigned error = lodepng::decode(image, width, height, filename, LCT_RGBA, 8);

  if(error) {
    std::cout << "error " << error << ": " << lodepng_error_text(error) <<
  std::endl; return std::vector<unsigned char>();
  }

  std::vector<unsigned char> bmp;
  encodeBMP(bmp, &image[0], width, height);
  lodepng::save_file(bmp, "irufghiorgudripygpiodhuysg.bmp");
  return bmp;*/
  int w, h, c;
  unsigned char *dat = stbi_load(filename.c_str(), &w, &h, &c, 4);
  stbi_write_bmp("irufghiorgudripygpiodhuysg.bmp", w, h, c, dat);
  std::vector<unsigned char> bmp;

  return bmp;
}

std::vector<unsigned char> ConvertBMP2PNGData(std::vector<unsigned char> data) {

  std::vector<unsigned char> image;
  unsigned w, h;
  unsigned error = BitmapConverter::decodeBMP(image, w, h, data);

  if (error) {
    std::cout << "BMP decoding error " << error << std::endl;
  }

  std::vector<unsigned char> png;
  error = lodepng::encode(png, image, w, h);

  if (error) {
    std::cout << "PNG encoding error " << error << ": "
              << lodepng_error_text(error) << std::endl;
  }

  return png;
}

std::vector<unsigned char>
ConvertPNG2BMP2Data(std::vector<unsigned char> data) {
  std::vector<unsigned char> out;

  unsigned width, height;
  lodepng::State s;
  lodepng::decode(out, width, height, s, data);
  std::vector<unsigned char> bmp;
  encodeBMP(bmp, &out[0], width, height);
  return bmp;
}

// Input image must be RGBA buffer (4 bytes per pixel), but you can easily make
// it support RGBA input and output by changing the inputChannels and/or
// outputChannels in the function to 4.
void encodeBMP(std::vector<unsigned char> &bmp, const unsigned char *image,
               int w, int h) {
  // 4 bytes per pixel used for both input and output.
  int inputChannels = 4;
  int outputChannels = 4;

  // bytes 0-13
  bmp.push_back('B');
  bmp.push_back('M'); // 0: bfType
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 2: bfSize; size not yet known for now, filled in later.
  bmp.push_back(0);
  bmp.push_back(0); // 6: bfReserved1
  bmp.push_back(0);
  bmp.push_back(0); // 8: bfReserved2
  bmp.push_back(54 % 256);
  bmp.push_back(54 / 256);
  bmp.push_back(0);
  bmp.push_back(0); // 10: bfOffBits (54 header bytes)

  // bytes 14-53
  bmp.push_back(40);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 14: biSize
  bmp.push_back(w % 256);
  bmp.push_back(w / 256);
  bmp.push_back(0);
  bmp.push_back(0); // 18: biWidth
  bmp.push_back(h % 256);
  bmp.push_back(h / 256);
  bmp.push_back(0);
  bmp.push_back(0); // 22: biHeight
  bmp.push_back(1);
  bmp.push_back(0); // 26: biPlanes
  bmp.push_back(outputChannels * 8);
  bmp.push_back(0); // 28: biBitCount
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 30: biCompression
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 34: biSizeImage
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 38: biXPelsPerMeter
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 42: biYPelsPerMeter
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 46: biClrUsed
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0);
  bmp.push_back(0); // 50: biClrImportant

  /*
  Convert the input RGBRGBRGB pixel buffer to the BMP pixel buffer format. There
  are 3 differences with the input buffer: -BMP stores the rows inversed, from
  bottom to top -BMP stores the color channels in BGR instead of RGB order -BMP
  requires each row to have a multiple of 4 bytes, so sometimes padding bytes
  are added between rows
  */

  int imagerowbytes = outputChannels * w;
  imagerowbytes =
      imagerowbytes % 4 == 0
          ? imagerowbytes
          : imagerowbytes + (4 - imagerowbytes % 4); // must be multiple of 4

  for (int y = h - 1; y >= 0; y--) { // the rows are stored inversed in bmp
    int c = 0;
    for (int x = 0; x < imagerowbytes; x++) {
      if (x < w * outputChannels) {
        int inc = c;
        // Convert RGB(A) into BGR(A)
        if (c == 0)
          inc = 2;
        else if (c == 2)
          inc = 0;
        bmp.push_back(
            image[inputChannels * (w * y + x / outputChannels) + inc]);
      } else
        bmp.push_back(0);
      c++;
      if (c >= outputChannels)
        c = 0;
    }
  }

  // Fill in the size
  bmp[2] = bmp.size() % 256;
  bmp[3] = (bmp.size() / 256) % 256;
  bmp[4] = (bmp.size() / 65536) % 256;
  bmp[5] = bmp.size() / 16777216;
}
} // namespace BitmapConverter