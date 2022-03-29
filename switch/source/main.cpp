#include "ngs.hpp"

NGS::Game game("Craftus-Next");

int main()
{
    padConfigureInput(1, HidNpadStyleSet_NpadStandard);
    PadState pad;
    padInitializeDefault(&pad);

    while (game.IsRunning())
    {
        padUpdate(&pad);
        u32 kDown = padGetButtonsDown(&pad);
        if (kDown & HidNpadButton_Plus)
            game.Exit();
    }

    return 0;
}