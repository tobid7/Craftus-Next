#pragma once
#include <fstream>
#include <vector>
#include <stdexcept>
#include <iostream>
#include <iterator>
#include <sstream>
using namespace std;
#pragma pack(push, 1)


struct BMPFileHeader {
    uint16_t file_type{ 0x4D42 };          // File type always BM which is 0x4D42 (stored as hex uint16_t in little endian)
    uint32_t file_size{ 0 };               // Size of the file (in bytes)
    uint16_t reserved1{ 0 };               // Reserved, always 0
    uint16_t reserved2{ 0 };               // Reserved, always 0
    uint32_t offset_data{ 0 };             // Start position of pixel data (bytes from the beginning of the file)
};

struct BMPInfoHeader {
    uint32_t size{ 0 };                      // Size of this header (in bytes)
    int32_t width{ 0 };                      // width of bitmap in pixels
    int32_t height{ 0 };                     // height of bitmap in pixels
                                             //       (if positive, bottom-up, with origin in lower left corner)
                                             //       (if negative, top-down, with origin in upper left corner)
    uint16_t planes{ 1 };                    // No. of planes for the target device, this is always 1
    uint16_t bit_count{ 0 };                 // No. of bits per pixel
    uint32_t compression{ 0 };               // 0 or 3 - uncompressed. THIS PROGRAM CONSIDERS ONLY UNCOMPRESSED BMP images
    uint32_t size_image{ 0 };                // 0 - for uncompressed images
    int32_t x_pixels_per_meter{ 0 };
    int32_t y_pixels_per_meter{ 0 };
    uint32_t colors_used{ 0 };               // No. color indexes in the color table. Use 0 for the max number of colors allowed by bit_count
    uint32_t colors_important{ 0 };          // No. of colors used for displaying the bitmap. If 0 all colors are required
};

struct BMPColorHeader {
    uint32_t red_mask{ 0x00ff0000 };         // Bit mask for the red channel
    uint32_t green_mask{ 0x0000ff00 };       // Bit mask for the green channel
    uint32_t blue_mask{ 0x000000ff };        // Bit mask for the blue channel
    uint32_t alpha_mask{ 0xff000000 };       // Bit mask for the alpha channel
    uint32_t color_space_type{ 0x73524742 }; // Default "sRGB" (0x73524742)
    uint32_t unused[16]{ 0 };                // Unused data for sRGB color space
};
#pragma pack(pop)

class BMP {
    public:
    BMPFileHeader file_header;
    BMPInfoHeader bmp_info_header;
    BMPColorHeader bmp_color_header;
    std::vector<uint8_t> data;

    
    BMP(const char *fname) {
        read(fname);
    }
    
    int read(const char *fname) {
        std::ifstream inp{ fname, std::ios_base::binary };
        if (inp) {
            inp.read((char*)&file_header, sizeof(file_header));
            if(file_header.file_type != 0x4D42) {
                
                return 50;
                //throw std::runtime_error("Error! Unrecognized file format.");
            }
            inp.read((char*)&bmp_info_header, sizeof(bmp_info_header));

            // The BMPColorHeader is used only for transparent images
            if(bmp_info_header.bit_count == 32) {
                // Check if the file has bit mask color information
                if(bmp_info_header.size >= (sizeof(BMPInfoHeader) + sizeof(BMPColorHeader))) {
                    inp.read((char*)&bmp_color_header, sizeof(bmp_color_header));
                    // Check if the pixel data is stored as BGRA and if the color space type is sRGB
                    check_color_header(bmp_color_header);
                } else {
                    //std::cerr << "Error! The file \"" << fname << "\" does not seem to contain bit mask information\n";
                    //return 51;//throw std::runtime_error("Error! Unrecognized file format.");
                }
            }

            // Jump to the pixel data location
            inp.seekg(file_header.offset_data, inp.beg);

            // Adjust the header fields for output.
            // Some editors will put extra info in the image file, we only save the headers and the data.
            if(bmp_info_header.bit_count == 32) {
                bmp_info_header.size = sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);
                file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);
            } else {
                bmp_info_header.size = sizeof(BMPInfoHeader);
                file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader);
            }
            file_header.file_size = file_header.offset_data;

            if (bmp_info_header.height < 0) {
                return 52;//throw std::runtime_error("The program can treat only BMP images with the origin in the bottom left corner!");
            }

            data.resize(bmp_info_header.width * bmp_info_header.height * bmp_info_header.bit_count / 8);

            // Here we check if we need to take into account row padding
            if (bmp_info_header.width % 4 == 0) {
                inp.read((char*)data.data(), data.size());
                file_header.file_size += static_cast<uint32_t>(data.size());
            }
            else {
                row_stride = bmp_info_header.width * bmp_info_header.bit_count / 8;
                uint32_t new_stride = make_stride_aligned(4);
                std::vector<uint8_t> padding_row(new_stride - row_stride);

                for (int y = 0; y < bmp_info_header.height; ++y) {
                    inp.read((char*)(data.data() + row_stride * y), row_stride);
                    inp.read((char*)padding_row.data(), padding_row.size());
                }
                file_header.file_size += static_cast<uint32_t>(data.size()) + bmp_info_header.height * static_cast<uint32_t>(padding_row.size());
            }
        }
        else {
            return 53;//throw std::runtime_error("Unable to open the input image file   "+std::string(fname));
        }
        return 0;
    }

    int read_mem(std::vector<unsigned char> buffer) {
        std::stringstream inp;
        std::copy(buffer.begin(), buffer.end(),std::ostream_iterator<unsigned char>(inp,"\n"));
        std::cout << buffer.size() << std::endl;
        if (inp) {
            inp.read((char*)&file_header, sizeof(file_header));
            if(file_header.file_type != 0x4D42) {
                
                //return 50;
                throw std::runtime_error("Error! Unrecognized file format. Header " + std::to_string(file_header.file_type));
            }
            inp.read((char*)&bmp_info_header, sizeof(bmp_info_header));

            // The BMPColorHeader is used only for transparent images
            if(bmp_info_header.bit_count == 32) {
                // Check if the file has bit mask color information
                if(bmp_info_header.size >= (sizeof(BMPInfoHeader) + sizeof(BMPColorHeader))) {
                    inp.read((char*)&bmp_color_header, sizeof(bmp_color_header));
                    // Check if the pixel data is stored as BGRA and if the color space type is sRGB
                    check_color_header(bmp_color_header);
                } else {
                    //std::cerr << "Error! The file \"" << fname << "\" does not seem to contain bit mask information\n";
                    //return 51;
                    throw std::runtime_error("Error! Unrecognized file format. Size");
                }
            }

            // Jump to the pixel data location
            inp.seekg(file_header.offset_data, inp.beg);

            // Adjust the header fields for output.
            // Some editors will put extra info in the image file, we only save the headers and the data.
            if(bmp_info_header.bit_count == 32) {
                bmp_info_header.size = sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);
                file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);
            } else {
                bmp_info_header.size = sizeof(BMPInfoHeader);
                file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader);
            }
            file_header.file_size = file_header.offset_data;

            if (bmp_info_header.height < 0) {
                //return 52;
                throw std::runtime_error("The program can treat only BMP images with the origin in the bottom left corner!");
            }

            data.resize(bmp_info_header.width * bmp_info_header.height * bmp_info_header.bit_count / 8);

            // Here we check if we need to take into account row padding
            if (bmp_info_header.width % 4 == 0) {
                inp.read((char*)data.data(), data.size());
                file_header.file_size += static_cast<uint32_t>(data.size());
            }
            else {
                row_stride = bmp_info_header.width * bmp_info_header.bit_count / 8;
                uint32_t new_stride = make_stride_aligned(4);
                std::vector<uint8_t> padding_row(new_stride - row_stride);

                for (int y = 0; y < bmp_info_header.height; ++y) {
                    inp.read((char*)(data.data() + row_stride * y), row_stride);
                    inp.read((char*)padding_row.data(), padding_row.size());
                }
                file_header.file_size += static_cast<uint32_t>(data.size()) + bmp_info_header.height * static_cast<uint32_t>(padding_row.size());
            }
        }
        else {
            //return 53;
            throw std::runtime_error("Unable to open the input image buffer");
        }
        return 0;
    }

    BMP(int32_t width, int32_t height, bool has_alpha = true) {
        if (width <= 0 || height <= 0) {
            width = 1;
            height = 1;
        }

        bmp_info_header.width = width;
        bmp_info_header.height = height;
        if (has_alpha) {
            bmp_info_header.size = sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);
            file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader) + sizeof(BMPColorHeader);

            bmp_info_header.bit_count = 32;
            bmp_info_header.compression = 3;
            row_stride = width * 4;
            data.resize(row_stride * height);
            file_header.file_size = file_header.offset_data + data.size();
        }
        else {
            bmp_info_header.size = sizeof(BMPInfoHeader);
            file_header.offset_data = sizeof(BMPFileHeader) + sizeof(BMPInfoHeader);

            bmp_info_header.bit_count = 24;
            bmp_info_header.compression = 0;
            row_stride = width * 3;
            data.resize(row_stride * height);

            uint32_t new_stride = make_stride_aligned(4);
            file_header.file_size = file_header.offset_data + static_cast<uint32_t>(data.size()) + bmp_info_header.height * (new_stride - row_stride);
        }
    }

    unsigned write(const char *fname) {
        std::ofstream of{ fname, std::ios_base::binary };
        if (of) {
            if (bmp_info_header.bit_count == 32) {
                write_headers_and_data(of);
            }
            else if (bmp_info_header.bit_count == 24) {
                if (bmp_info_header.width % 4 == 0) {
                    write_headers_and_data(of);
                }
                else {
                    uint32_t new_stride = make_stride_aligned(4);
                    std::vector<uint8_t> padding_row(new_stride - row_stride);

                    write_headers(of);

                    for (int y = 0; y < bmp_info_header.height; ++y) {
                        of.write((const char*)(data.data() + row_stride * y), row_stride);
                        of.write((const char*)padding_row.data(), padding_row.size());
                    }
                }
            }
            else {
                return 54;//throw std::runtime_error("The program can treat only 24 or 32 bits per pixel BMP files");
            }
        }
        else {
            return 55;//throw std::runtime_error("Unable to open the output image file.");
        }
        return 0;
        
    }

    std::vector<unsigned char> DATA() {
        std::stringstream ss;
        if (ss) {
            if (bmp_info_header.bit_count == 32) {
                write_headers_and_datass(ss);
            }
            else if (bmp_info_header.bit_count == 24) {
                if (bmp_info_header.width % 4 == 0) {
                    write_headers_and_datass(ss);
                }
                else {
                    uint32_t new_stride = make_stride_aligned(4);
                    std::vector<uint8_t> padding_row(new_stride - row_stride);

                    write_headersss(ss);

                    for (int y = 0; y < bmp_info_header.height; ++y) {
                        ss.write((const char*)(data.data() + row_stride * y), row_stride);
                        ss.write((const char*)padding_row.data(), padding_row.size());
                    }
                }
            }
            else {
                
            }
        }
        else {
            
        }
        std::string test11 = ss.str();
        std::vector<unsigned char> test12(test11.begin(), test11.end());
        return test12;
        
    }

    unsigned fill_region(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h, uint8_t B, uint8_t G, uint8_t R, uint8_t A) {
        uint32_t channels = bmp_info_header.bit_count / 8;
        for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                /*if (x + w > (uint32_t)bmp_info_header.width || y + h > (uint32_t)bmp_info_header.height) {
                    //
                }*/
                //else{
                    data[channels * (y * bmp_info_header.width + x) + 0] = B;
                    data[channels * (y * bmp_info_header.width + x) + 1] = G;
                    data[channels * (y * bmp_info_header.width + x) + 2] = R;
                    if (channels == 4) {
                        data[channels * (y * bmp_info_header.width + x) + 3] = A;
                    }
                //}
            }
        }
        return 0;
    }

    void fill_region_df(uint32_t x1, uint32_t y1, uint32_t w, uint32_t h, uint8_t B, uint8_t G, uint8_t R, uint8_t A) {
        
        int x0 = x1;
        int y0 = this->bmp_info_header.height - y1 - h;

        uint32_t channels = bmp_info_header.bit_count / 8;
        for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                if ((x + w < (uint32_t)bmp_info_header.width) || this->bmp_info_header.height - y - h > 0) {
                
                    data[channels * (y * bmp_info_header.width + x) + 0] = B;
                    data[channels * (y * bmp_info_header.width + x) + 1] = G;
                    data[channels * (y * bmp_info_header.width + x) + 2] = R;
                    if (channels == 4) {
                        data[channels * (y * bmp_info_header.width + x) + 3] = A;
                    }
                }
            }
        }
    }

    void manipulate_region(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h, uint8_t A) {
        int choice, choice2, intensity;
        cout << "What color do you want to change? " << endl;
        cout << "Enter 1 for Blue, 2 for Green, 3 for Red " << endl;
        cin >> choice;
        cout << "To what color do you want to change it too?" << endl;
        cout << "Enter 1 for Blue, 2 for Green, 3 for Red " << endl;
        cin >> choice2;
        cout << "Enter the intensity of the color. (From 0 to 255) " << endl;
        cin >> intensity;
        if (x0 + w > (uint32_t)bmp_info_header.width || y0 + h > (uint32_t)bmp_info_header.height) {
            return;//throw std::runtime_error("The region does not fit in the image!");
        }

        uint32_t channels = bmp_info_header.bit_count / 8;
        if (choice==1 && choice2==1)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make blue thing blue
                if(data[channels * (y * bmp_info_header.width + x) + 0]>80 && data[channels * (y * bmp_info_header.width + x) + 0]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                //data[channels * (y * bmp_info_header.width + x) + 0] = B;
                //data[channels * (y * bmp_info_header.width + x) + 1] = G;
                //data[channels * (y * bmp_info_header.width + x) + 2] = R;
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 1 && choice2==2)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make blue thing green
                if(data[channels * (y * bmp_info_header.width + x) + 0]>80 && data[channels * (y * bmp_info_header.width + x) + 0]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 1 && choice2==3)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make blue thing red
                if(data[channels * (y * bmp_info_header.width + x) + 0]>80 && data[channels * (y * bmp_info_header.width + x) + 0]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = intensity;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 2 && choice2==1)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make green thing blue
                if(data[channels * (y * bmp_info_header.width + x) + 1]>80 && data[channels * (y * bmp_info_header.width + x) + 1]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 2 && choice2==2)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make green thing green
                if(data[channels * (y * bmp_info_header.width + x) + 1]>80 && data[channels * (y * bmp_info_header.width + x) + 1]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 2 && choice2==3)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make green thing red
                if(data[channels * (y * bmp_info_header.width + x) + 1]>80 && data[channels * (y * bmp_info_header.width + x) + 1]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = intensity;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 3 && choice2==1)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make red thing blue
                if(data[channels * (y * bmp_info_header.width + x) + 2]>80 && data[channels * (y * bmp_info_header.width + x) + 2]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 3 && choice2==2)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make red thing green
                if(data[channels * (y * bmp_info_header.width + x) + 2]>80 && data[channels * (y * bmp_info_header.width + x) + 2]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = intensity;
                  data[channels * (y * bmp_info_header.width + x) + 2] = 0;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        if (choice == 3 && choice2==3)
        {
          for (uint32_t y = y0; y < y0 + h; ++y) {
            for (uint32_t x = x0; x < x0 + w; ++x) {
                cout << channels*(y*bmp_info_header.width+x) << endl;
                //Make red thing blue
                if(data[channels * (y * bmp_info_header.width + x) + 2]>80 && data[channels * (y * bmp_info_header.width + x) + 2]<255) 
                {
                  data[channels * (y * bmp_info_header.width + x) + 0] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 1] = 0;
                  data[channels * (y * bmp_info_header.width + x) + 2] = intensity;
                }
                if (channels == 4) {
                    data[channels * (y * bmp_info_header.width + x) + 3] = A;
                }
            }
        }
        }
        
    }

    unsigned set_pixel(uint32_t x0, uint32_t y0, uint8_t B, uint8_t G, uint8_t R, uint8_t A) {
        if (x0 >= (uint32_t)bmp_info_header.width || y0 >= (uint32_t)bmp_info_header.height || x0 < 0 || y0 < 0) {
            return 59;
            //std::string errr = "The point is outside the image boundaries! -> " + std::to_string(x0) + "," + std::to_string(y0);
            //throw std::runtime_error(errr);
        }
        uint32_t channels = bmp_info_header.bit_count / 8;
        data[channels * (y0 * bmp_info_header.width + x0) + 0] = B;
        data[channels * (y0 * bmp_info_header.width + x0) + 1] = G;
        data[channels * (y0 * bmp_info_header.width + x0) + 2] = R;
        if (channels == 4) {
            data[channels * (y0 * bmp_info_header.width + x0) + 3] = A;
        }
        return 0;
    }

    void set_pixel_df(uint32_t x0, uint32_t y0, uint8_t B, uint8_t G, uint8_t R, uint8_t A) {
        uint32_t y1 = this->bmp_info_header.height - y0;
        if (x0 >= (uint32_t)bmp_info_header.width || y1 <= (uint32_t)bmp_info_header.width || x0 < 0 || y0 > 0) {
            return;
            //throw std::runtime_error("The point is outside the image boundaries! -> " + std::to_string(x0) + "," + std::to_string(y1));
        }
        
        uint32_t channels = bmp_info_header.bit_count / 8;
        data[channels * (y0 * bmp_info_header.width + x0) + 0] = B;
        data[channels * (y0 * bmp_info_header.width + x0) + 1] = G;
        data[channels * (y0 * bmp_info_header.width + x0) + 2] = R;
        if (channels == 4) {
            data[channels * (y0 * bmp_info_header.width + x0) + 3] = A;
        }
    }

    uint32_t get_pixel(uint32_t x0, uint32_t y0) {
        if (x0 >= (uint32_t)bmp_info_header.width || y0 >= (uint32_t)bmp_info_header.height || x0 < 0 || y0 < 0) {
            return 59;//throw std::runtime_error("The point is outside the image boundaries!");
        }
        uint32_t channels = bmp_info_header.bit_count / 8;
        uint32_t outcol = 0;
        uint8_t red = 0;
        uint8_t green = 0;
        uint8_t blue = 0;
        uint8_t alpha = 255;
        blue = data[channels * (y0 * bmp_info_header.width + x0) + 0];
        green = data[channels * (y0 * bmp_info_header.width + x0) + 1];
        red = data[channels * (y0 * bmp_info_header.width + x0) + 2];
        if (channels == 4) {
            alpha = data[channels * (y0 * bmp_info_header.width + x0) + 3];
        }
        outcol = ((red << 24) | (green << 16) | (blue << 8) | alpha);
        return outcol;
    }

    uint32_t get_pixel_df(uint32_t x0, uint32_t y0) {
        uint32_t y1 = this->bmp_info_header.height - y0;
        if (x0 >= (uint32_t)bmp_info_header.width || y1 <= (uint32_t)bmp_info_header.width || x0 < 0 || y0 > 0) {
            return 0;//throw std::runtime_error("The point is outside the image boundaries!");
        }
        
        uint32_t channels = bmp_info_header.bit_count / 8;
        uint32_t outcol = 0;
        uint8_t red = 0;
        uint8_t green = 0;
        uint8_t blue = 0;
        uint8_t alpha = 255;
        blue = data[channels * (y0 * bmp_info_header.width + x0) + 0];
        green = data[channels * (y0 * bmp_info_header.width + x0) + 1];
        red = data[channels * (y0 * bmp_info_header.width + x0) + 2];
        if (channels == 4) {
            alpha = data[channels * (y0 * bmp_info_header.width + x0) + 3];
        }
        outcol = ((red << 24) | (green << 16) | (blue << 8) | alpha);
        return outcol;
    }

    unsigned draw_rectangle(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
                        uint8_t B, uint8_t G, uint8_t R, uint8_t A, uint8_t line_w) {
        if (x0 + w > (uint32_t)bmp_info_header.width || y0 + h > (uint32_t)bmp_info_header.height) {
            return 59;//throw std::runtime_error("The rectangle does not fit in the image!");
        }

        fill_region(x0, y0, w, line_w, B, G, R, A);                                             // top line
        fill_region(x0, (y0 + h - line_w), w, line_w, B, G, R, A);                              // bottom line
        fill_region((x0 + w - line_w), (y0 + line_w), line_w, (h - (2 * line_w)), B, G, R, A);  // right line
        fill_region(x0, (y0 + line_w), line_w, (h - (2 * line_w)), B, G, R, A);                 // left line
        return 0;              
    }

     void draw_rectangle_df(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
                        uint8_t B, uint8_t G, uint8_t R, uint8_t A, uint8_t line_w) {
        if (x0 + w > (uint32_t)bmp_info_header.width || y0 + h > (uint32_t)bmp_info_header.height) {
            return;//throw std::runtime_error("The rectangle does not fit in the image!");
        }

        fill_region_df(x0, y0, w, line_w, B, G, R, A);                                             // top line
        fill_region_df(x0, (y0 + h - line_w), w, line_w, B, G, R, A);                              // bottom line
        fill_region_df((x0 + w - line_w), (y0 + line_w), line_w, (h - (2 * line_w)), B, G, R, A);  // right line
        fill_region_df(x0, (y0 + line_w), line_w, (h - (2 * line_w)), B, G, R, A);                 // left line
    }

private:
    uint32_t row_stride{ 0 };

    void write_headers(std::ofstream &of) {
        of.write((const char*)&file_header, sizeof(file_header));
        of.write((const char*)&bmp_info_header, sizeof(bmp_info_header));
        if(bmp_info_header.bit_count == 32) {
            of.write((const char*)&bmp_color_header, sizeof(bmp_color_header));
        }
    }

    void write_headers_and_data(std::ofstream &of) {
        write_headers(of);
        of.write((const char*)data.data(), data.size());
    }

    void write_headersss(std::stringstream &of) {
        of.write((const char*)&file_header, sizeof(file_header));
        of.write((const char*)&bmp_info_header, sizeof(bmp_info_header));
        if(bmp_info_header.bit_count == 32) {
            of.write((const char*)&bmp_color_header, sizeof(bmp_color_header));
        }
    }

    void write_headers_and_datass(std::stringstream &of) {
        write_headersss(of);
        of.write((const char*)data.data(), data.size());
    }

    // Add 1 to the row_stride until it is divisible with align_stride
    uint32_t make_stride_aligned(uint32_t align_stride) {
        uint32_t new_stride = row_stride;
        while (new_stride % align_stride != 0) {
            new_stride++;
        }
        return new_stride;
    }

    // Check if the pixel data is stored as BGRA and if the color space type is sRGB
    void check_color_header(BMPColorHeader &bmp_color_header) {
        BMPColorHeader expected_color_header;
        if(expected_color_header.red_mask != bmp_color_header.red_mask ||
            expected_color_header.blue_mask != bmp_color_header.blue_mask ||
            expected_color_header.green_mask != bmp_color_header.green_mask ||
            expected_color_header.alpha_mask != bmp_color_header.alpha_mask) {
            return;//throw std::runtime_error("Unexpected color mask format! The program expects the pixel data to be in the BGRA format");
        }
        if(expected_color_header.color_space_type != bmp_color_header.color_space_type) {
            return;//throw std::runtime_error("Unexpected color space type! The program expects sRGB values");
        }
    }
};