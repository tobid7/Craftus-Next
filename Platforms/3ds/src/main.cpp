#include <stdlib.h>
#include <stdio.h>

#include <3ds.h>
#include <citro3d.h>
#include <citro2d.h>

#include <Base.hpp>


//#define STB_IMAGE_IMPLEMENTATION
//#include <stb_image.h>
 
//NImGui::Timer deltaclock;
Base::Timer frameclock;
int frames;
int fps = 0;
//float deltatime = 0.f;
//
std::string FrameRate()
{
    frames ++;
    if ((frameclock.Get()/1000) >= 1.f)
    {
        fps = frames;
        frames = 0;
        frameclock.Reset();
    }
    return std::to_string(fps);
}

C2D_TextBuf tb;
C3D_RenderTarget *top;
int main(void)
{
    aptInit();
    gfxInitDefault();
    consoleInit(GFX_BOTTOM, NULL);
    romfsInit();
    printf("test\n");
    std::cout << Base::GetPlatform() << std::endl;
    Base::Timer tm;
    Base::BitmapPrinter pr(256, 256);
    Base::BitmapPrinter ll(256, 256);
    ll.DecodePNGFile("romfs:/loading.png");
    pr.DrawBitmap(0, 0, ll.GetBitmap());
    
    
    C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
    C2D_Init(C2D_DEFAULT_MAX_OBJECTS);
    C2D_Prepare();
    C2D_TextBufNew(900);
    C2D_TextBufClear(tb);
    C2D_FontLoadSystem(CFG_REGION_EUR);
    top = C2D_CreateScreenTarget(GFX_TOP, GFX_LEFT);
    pr.SetDecoder(Base::BITMAP2PNG2TEX);
    pr.UpdateScreen();
    double ed = tm.GetAsMs();
    printf("RenderTime -> %fms\n", ed);
    BaseTexture tex;
    tex.Load("romfs:/loading.png");
    //NImGui::App app("Craftus-Next", NImGui::Vec2i(1280, 720));
    Base::Timer delta;
    double dt = 0;
    
    while(aptMainLoop())
    {
        printf("\033[8;0HFPS: %s", FrameRate().c_str());
        printf("\033[9;0HDT: %f", dt);
        C2D_TextBufClear(tb);
        dt = delta.GetAsMs();
        delta.Reset();
        C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
        C2D_TargetClear(top, C2D_Color32(0, 0, 0, 255));
        C2D_SceneBegin(top);
        //C2D_DrawRectSolid(0, 0, 0.5f, 400, 240, C2D_Color32(255, 255, 255, 255));
        C2D_DrawImageAt(tex.GetCtrReg(), -1, -1, 0.5f);
        C2D_DrawImageAt(pr.GetImage().GetCtrReg(), 0, 0, 0.5f);

        //deltatime = deltaclock.GetAsMs();
        //deltaclock.Reset();
        C3D_FrameEnd(0);
    }

    C2D_Fini();
	C3D_Fini();
    exit(EXIT_SUCCESS);
}
 