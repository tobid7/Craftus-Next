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

#ifndef __BASE_BUILD__
#define __BASE_DESKTOP__
#endif

#include <glm/glm.hpp>
#include <rendering/Base_Ren_Reg.hpp>

#if (defined(__BASE_DESKTOP__))
#include <gl/GL_Renderer.hpp>
#include <gl/GL_Shader.hpp>
#include <gl/GL_Texture.hpp>
#include <gl/GL_VertexArray.hpp>
#include <rendering/Vertex.hpp>

typedef Base::GL_Renderer BaseRenderer;
typedef Base::GL_Texture BaseTexture;
typedef Base::GL_VertexArray BaseVertexArray;
typedef Base::GL_Shader BaseShader;

#elif defined(__BASE_CTR__)
#include <c3d/C3D_Renderer.hpp>
#include <c3d/C3D_Shader.hpp>
#include <c3d/C3D_Texture.hpp>
#include <c3d/C3D_VertexArray.hpp>

typedef Base::C3D_Renderer BaseRenderer;
typedef Base::C3D_Texture BaseTexture;
typedef Base::C3D_VertexArray BaseVertexArray;
typedef Base::C3D_Shader BaseShader;

#else
#include <Renderer.hpp>
#include <Shader.hpp>
#include <Texture.hpp>
#include <VertexArray.hpp>

typedef Base::Renderer BaseRenderer;
typedef Base::Texture BaseTexture;
#endif