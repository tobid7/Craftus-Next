#include <stdlib.h>
#include <stdio.h>
#include <3ds.h>
#include <citro3d.h>
#include <citro2d.h>

#include <Base.hpp>


//#define STB_IMAGE_IMPLEMENTATION
//#include <stb_image.h>
 
//NImGui::Timer deltaclock;
//NImGui::Timer frameclock;
//int frames;
//int fps = 0;
//float deltatime = 0.f;
//
//std::string FrameRate()
//{
//    frames ++;
//    if ((frameclock.GetAsMs()/1000) >= 1.f)
//    {
//        fps = frames;
//        frames = 0;
//        frameclock.Reset();
//    }
//    return std::to_string(fps);
//}
C3D_RenderTarget *top;
int main(void)
{
    aptInit();
    gfxInitDefault();
    consoleInit(GFX_BOTTOM, NULL);
    printf("test\n");
    std::cout << Base::GetPlatform() << std::endl;
    double bg = svcGetSystemTick();
    Base::BitmapPrinter pr(256, 256);
    pr.DrawRect(0, 0, 20, 20, 3, 100, 100, 100, 255);
    
    double ed = svcGetSystemTick();
    printf("RenderTime -> %fms", (ed - bg)/1000/1000);
    C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
    C2D_Init(C2D_DEFAULT_MAX_OBJECTS);
    C2D_Prepare();
    top = C2D_CreateScreenTarget(GFX_TOP, GFX_LEFT);
    pr.UpdateScreen();
    //NImGui::App app("Craftus-Next", NImGui::Vec2i(1280, 720));
    while(aptMainLoop())
    {
        C3D_FrameBegin(C3D_FRAME_SYNCDRAW);
        C2D_TargetClear(top, C2D_Color32(0, 0, 0, 255));
        C2D_SceneBegin(top);
        //C2D_DrawRectSolid(0, 0, 0.5f, 400, 240, C2D_Color32(255, 255, 255, 255));
        C2D_DrawImageAt(pr.GetImage().GetCtrReg(), 0, 0, 0.5f);
        //deltatime = deltaclock.GetAsMs();
        //deltaclock.Reset();
        C3D_FrameEnd(0);
    }

    C2D_Fini();
	C3D_Fini();
    exit(EXIT_SUCCESS);
}
 