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
#include <chrono>
#include <iostream>
#include <string>

#ifdef __BASE_CTR__
#include <3ds.h>
#endif

namespace Base {

class Timer {
public:
  Timer() { Reset(); }

  void Reset() {
#ifdef __BASE_CTR__
    m_Start = osGetTime();
#else
    m_Start = std::chrono::high_resolution_clock::now();
#endif
  }

  float Get() {
#ifdef __BASE_CTR__
    return (osGetTime() - m_Start);
#else
    return std::chrono::duration_cast<std::chrono::nanoseconds>(
               std::chrono::high_resolution_clock::now() - m_Start)
               .count() *
           0.001f * 0.001f * 0.001f;
#endif
  }

  float GetAsMs() {
#ifdef __BASE_CTR__
    return Get();
#else
    return Get() * 1000.0f;
#endif
  }

private:
#ifdef __BASE_CTR__
  double m_Start;
#else
  std::chrono::time_point<std::chrono::high_resolution_clock> m_Start;
#endif
};
} // namespace Base