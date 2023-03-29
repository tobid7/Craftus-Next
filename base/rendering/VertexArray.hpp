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
#pragma once

#include <rendering/Vertex.hpp>

namespace Base {
class VertexArray {
public:
  virtual ~VertexArray() {}
  virtual void Create(const void *data, uint32_t numVertices,
                      size_t vtxsize) = 0;
  virtual void AddAttrInfo(int index, int size, int type, bool normmalized,
                           size_t stride, const void *pointer) = 0;
  virtual void UpdateSubData(const void *data, int offs, size_t size) = 0;
  virtual void Destroy() = 0;
  virtual void Bind() = 0;
  virtual void UnBind() = 0;
};
} // namespace Base