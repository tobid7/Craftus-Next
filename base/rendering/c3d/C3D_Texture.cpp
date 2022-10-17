#include <external/stb_image.h>
#include <string>
#include <c3d/C3D_Texture.hpp>


namespace Base
{
    ErrorCode C3D_Texture::Load(std::string file, int register_)
    {
        reg = register_;
        int width, height, nrComponents;
        unsigned char *data = stbi_load(file.c_str(), &width, &height, &nrComponents, 0);
        if (data)
        {
            this->regid.tex = new C3D_Tex;
	        this->regid.subtex = new Tex3DS_SubTexture({(u16)width, (u16)height, 0.0f, 1.0f, width / 1024.0f, 1.0f - (height / 1024.0f)});

	        C3D_TexInit(this->regid.tex, 1024, 1024, GPU_RGBA8);
	        C3D_TexSetFilter(this->regid.tex, GPU_LINEAR, GPU_LINEAR);
	        this->regid.tex->border = 0xFFFFFFFF;
	        C3D_TexSetWrap(this->regid.tex, GPU_CLAMP_TO_BORDER, GPU_CLAMP_TO_BORDER);

	        for (u32 x = 0; x < width && x < 1024; x++) {
	        	for (u32 y = 0; y < height && y < 1024; y++) {
	        		const u32 dstPos = ((((y >> 3) * (1024 >> 3) + (x >> 3)) << 6) +
	        							((x & 1) | ((y & 1) << 1) | ((x & 2) << 1) | ((y & 2) << 2) |
	        							((x & 4) << 2) | ((y & 4) << 3))) * 4;

	        		const u32 srcPos = (y * width + x) * 4;
	        		((uint8_t *)this->regid.tex->data)[dstPos + 0] = data[srcPos + 3];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 1] = data[srcPos + 2];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 2] = data[srcPos + 1];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 3] = data[srcPos + 0];
	        	}
	        }
            stbi_image_free(data);
            size[0] = width;
            size[1] = height;
            std::cout << "Generated Texture: " << /*std::to_string(regid) << */" -> Size: " << std::to_string(size[0]) << ", " << std::to_string(size[1]) << std::endl;
        }
        else
        {
            std::cout << "Texture failed to load at path: " << file << std::endl;
            stbi_image_free(data);
            return 2;
        }
        return 0;
    }
    
    ErrorCode C3D_Texture::LoadMem(std::vector<unsigned char> mem, int register_)
    {
        reg = register_;
        int width, height, nrComponents;
        unsigned char *data = stbi_load_from_memory(mem.data(), mem.size(), &width, &height, &nrComponents, 0);
        if (data)
        {
            this->regid.tex = new C3D_Tex;
	        this->regid.subtex = new Tex3DS_SubTexture({(u16)width, (u16)height, 0.0f, 1.0f, width / 1024.0f, 1.0f - (height / 1024.0f)});

	        C3D_TexInit(this->regid.tex, 1024, 1024, GPU_RGBA8);
	        C3D_TexSetFilter(this->regid.tex, GPU_LINEAR, GPU_LINEAR);
	        this->regid.tex->border = 0xFFFFFFFF;
	        C3D_TexSetWrap(this->regid.tex, GPU_CLAMP_TO_BORDER, GPU_CLAMP_TO_BORDER);

	        for (u32 x = 0; x < width && x < 1024; x++) {
	        	for (u32 y = 0; y < height && y < 1024; y++) {
	        		const u32 dstPos = ((((y >> 3) * (1024 >> 3) + (x >> 3)) << 6) +
	        							((x & 1) | ((y & 1) << 1) | ((x & 2) << 1) | ((y & 2) << 2) |
	        							((x & 4) << 2) | ((y & 4) << 3))) * 4;

	        		const u32 srcPos = (y * width + x) * 4;
	        		((uint8_t *)this->regid.tex->data)[dstPos + 0] = data[srcPos + 3];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 1] = data[srcPos + 2];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 2] = data[srcPos + 1];
	        		((uint8_t *)this->regid.tex->data)[dstPos + 3] = data[srcPos + 0];
	        	}
	        }
            stbi_image_free(data);
            size[0] = width;
            size[1] = height;
            std::cout << "Generated Texture: " << /*std::to_string(regid) << */" -> Size: " << std::to_string(size[0]) << ", " << std::to_string(size[1]) << std::endl;
        }
        else
        {
            std::cout << "Texture failed to load from memory!" << std::endl;
            stbi_image_free(data);
            return 2;
        }
        return 0;
    }
    
    ErrorCode C3D_Texture::Bind()
    {
        C3D_TexBind(0+reg, regid.tex);
        return 0;
    }
    
    ErrorCode C3D_Texture::Destroy()
    {
        C3D_TexDelete(regid.tex);
    }
    
    float C3D_Texture::GetW()
    {
        return size[0];
    }
    float C3D_Texture::GetH()
    {
        return size[1];
    }
    
    unsigned int C3D_Texture::GetRegID()
    {
        return 1;
    }
    
    C2D_Image C3D_Texture::GetCtrReg()
    {
        return regid;
    }
}