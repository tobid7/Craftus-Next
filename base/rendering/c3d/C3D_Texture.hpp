#pragma once

#include <Texture.hpp>
#include <3ds.h>
#include <citro3d.h>
#include <citro2d.h>


namespace Base
{
    class C3D_Texture : public Texture
    {
        public:
        ErrorCode Load(std::string file, int register_ = 0) override;
        virtual ErrorCode LoadMem(std::vector<unsigned char> mem, int register_ = 0) override;
        ErrorCode Bind() override;
        virtual ErrorCode Destroy() override;
        float GetW() override;
        float GetH() override;
        unsigned int GetRegID() override;
        C2D_Image GetCtrReg();
        private:
        C2D_Image regid;
        float size[2];
        unsigned int reg;
    };
}