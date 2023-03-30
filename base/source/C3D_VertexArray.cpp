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
#include <iostream>
#include <map>
#include <rendering/c3d/C3D_VertexArray.hpp>
#include <string>
#include <vector>

namespace Base {
C3D_VertexArray::~C3D_VertexArray() { Destroy(); }

void C3D_VertexArray::Create(const void *data, uint32_t numVertices,
                            size_t vtxsize) {
 
}

void C3D_VertexArray::AddAttrInfo(int index, int size, int type,
                                 bool normmalized, size_t stride,
                                 const void *pointer) {

}

void C3D_VertexArray::UpdateSubData(const void *data, int offs, size_t size) {
}

void C3D_VertexArray::Destroy() {  }

void C3D_VertexArray::Bind() {  }

void C3D_VertexArray::UnBind() {  }
} // namespace Base