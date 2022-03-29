#include "ngs.hpp"

namespace NGS
{
    Game::Game(std::string name)
    {
        m_name = name;
        #ifdef __SWITCH__
        padConfigureInput(1, HidNpadStyleSet_NpadStandard);
        padInitializeDefault(&pad);
        #endif
        #ifdef __3DS__
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
        #endif
    }
    Game::~Game()
    {
        #ifdef __SWITCH__
        //nothing
        #endif
        #ifdef __3DS__
        C3D_Fini();
        gfxExit();
        mcuHwcExit();
        romfsExit();
        acExit();
        ptmuExit();
        cfguExit();
        aptExit();
        #endif
    }
    bool Game::IsRunning()
    {
        #ifdef __SWITCH__
        if (!appletMainLoop()) return false;
        padUpdate(&pad);
        #endif
        #ifdef __3DS__
        if (!aptMainLoop()) return false;
        hidScanInput();
        #endif
        return m_running;
    }
}