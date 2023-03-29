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

#include <iostream>
#include <vector>

namespace BitmapConverter {
// returns 0 if all went ok, non-0 if error
// output image is always given in RGBA (with alpha channel), even if it's a BMP
// without alpha channel
unsigned decodeBMP(std::vector<unsigned char> &image, unsigned &w, unsigned &h,
                   const std::vector<unsigned char> &bmp);
void encodeBMP(std::vector<unsigned char> &bmp, const unsigned char *image,
               int w, int h);

std::vector<unsigned char> ConvertBMP2PNGFile(std::string filename);
std::vector<unsigned char> ConvertPNG2BMPFile(std::string filename);

std::vector<unsigned char> ConvertBMP2PNGData(std::vector<unsigned char> data);
std::vector<unsigned char> ConvertPNG2BMP2Data(std::vector<unsigned char> data);
} // namespace BitmapConverter