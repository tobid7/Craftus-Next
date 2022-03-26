#pragma once
#include "global.hpp"



namespace NGS
{
    class Game {
        public:
        Game(std::string name = "Debug");
        ~Game();
        bool IsRunning();
        private:
        std::string g_name;
    };
}