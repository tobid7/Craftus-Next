#include <stdlib.h>
#include <stdio.h>
#include <3ds.h>


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

int main(void)
{
    aptInit();
    gfxInitDefault();
    consoleInit(GFX_TOP, NULL);
    printf("test");
    //NImGui::App app("Craftus-Next", NImGui::Vec2i(1280, 720));
    while(aptMainLoop())
    {
        //deltatime = deltaclock.GetAsMs();
        //deltaclock.Reset();
        gfxSwapBuffers();
    }
    exit(EXIT_SUCCESS);
}
 