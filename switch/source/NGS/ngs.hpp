#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#ifdef __SWITCH__
#include <switch.h>
#endif
#ifdef __3DS__
#include <3ds.h>
#endif

namespace NGS
{
    class Game
    {
        public:
        Game(std::string name = "Game");
        ~Game();
        bool IsRunning();
        #ifdef __SWITCH__
        PadState GetPad(){ return this->pad; }
        #endif
        std::string m_name = "Game";
        private:
        #ifdef __SWITCH__
        PadState pad;
        #endif
        bool m_running = false;
    };
}