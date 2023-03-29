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
#include <StealConsole.hpp>
#include <iostream>

namespace Base {
StealConsole::StealConsole() {
  std::streambuf *old = std::cout.rdbuf(this->stolen_stdout.rdbuf());
  if (old) {
    // To prevent from unused error
  }
}

StealConsole::~StealConsole() {
  // Do Nothing Here
}

std::string StealConsole::GetStdout() {
  if (this->stolen_stdout.str().length() < 90000) {
    return this->stolen_stdout.str();
  } else {
    return this->stolen_stdout.str().substr(stolen_stdout.str().length() -
                                            90000);
  }
  return "";
}
} // namespace Base