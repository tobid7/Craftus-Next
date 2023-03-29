/*  ____            __ _                   _   _           _   
*  / ___|_ __ __ _ / _| |_ _   _ ___      | \ | | _____  _| |_ 
* | |   | '__/ _` | |_| __| | | / __|_____|  \| |/ _ \ \/ / __|
* | |___| | | (_| |  _| |_| |_| \__ \_____| |\  |  __/>  <| |_ 
*  \____|_|  \__,_|_|  \__|\__,_|___/     |_| \_|\___/_/\_\\__|
*                                                              
*  _   _ ____ ___      ____ _____ ______ _____             
* | \ | |  _ \_ _|    |  _ \___  / /  _ \___  |_   ____  __
* |  \| | |_) | |_____| | | | / / /| | | | / /\ \ / /\ \/ /
* | |\  |  __/| |_____| |_| |/ / / | |_| |/ /  \ V /  >  < 
* |_| \_|_|  |___|    |____//_/_/  |____//_/    \_/  /_/\_\
* Copyright (C) 2022-2023 Tobi-D7, RSDuck, Onixiya, D7vx-Dev, NPI-D7
*/
#include <Base.hpp>
#define STB_TRUETYPE_IMPLEMENTATION
#include <external/stb_truetype.h>

#ifndef BASE_NAME
#define BASE_NAME "NULL"
#endif
#ifndef BASE_VERSION
#define BASE_VERSION "NULL"
#endif
#ifndef BASE_PLATFORM
#define BASE_PLATFORM "NULL"
#endif

namespace Base {
void Init() {
#if (defined(__BASE_DESKTOP__))
#elif defined(__BASE_CTR__)
#else
  exit(EXIT_FAILURE);
#endif
}

void Exit() {}

std::string GetVersion() { return BASE_VERSION; }

std::string GetName() { return BASE_NAME; }

std::string GetPlatform() { return BASE_PLATFORM; }
} // namespace Base
