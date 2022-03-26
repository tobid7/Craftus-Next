#include "global.hpp"
bool m_running = false;
namespace NGS
{
    Game::Game(std::string name)
    {
        this->g_name = name;
        aptInit();
        cfguInit();
        ptmuInit();
        acInit();
        romfsInit();
        archiveMountSdmc();
        //mcuHwcInit();
        gfxInitDefault();
        C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);
        //Result res;
        //res = ndspInit();
        //if (!res) {
        //    d7gfx::priv::ndsp::initialized = true;
        //}
            
        osSetSpeedupEnable(true);
        m_running = true;
    }
    Game::~Game()
    {
        //if (d7gfx::priv::ndsp::initialized) ndspExit();
        C3D_Fini();
        gfxExit();
        mcuHwcExit();
        romfsExit();
        acExit();
        ptmuExit();
        cfguExit();
        aptExit();
    }
    bool Game::IsRunning()
    {
        if (!aptMainLoop()) return false;

        hidScanInput(); // scan input since this gets called every frame
        //C3D_FrameEnd(0);
        return m_running;
    }
}