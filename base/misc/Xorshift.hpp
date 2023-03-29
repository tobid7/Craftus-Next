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
#include <stdint.h>

typedef uint32_t Xorshift32;
typedef uint64_t Xorshift64;

inline Xorshift32 Xorshift32_New() { return (Xorshift32)314159265; }
inline Xorshift64 Xorshift64_New() { return (Xorshift64)88172645463325252ull; }

inline uint32_t Xorshift32_Next(Xorshift32 *gen) {
  *gen ^= *gen << 13;
  *gen ^= *gen >> 17;
  *gen ^= *gen << 5;
  return *gen;
}
inline uint64_t Xorshift64_Next(Xorshift64 *gen) {
  *gen ^= *gen << 13;
  *gen ^= *gen >> 7;
  *gen ^= *gen << 17;
  return *gen;
}