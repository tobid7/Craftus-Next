
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
#include <map>
#include <rendering/Renderer_Def.hpp>

static const char *const vertText = R"text(
#version 130

in vec2 a_position;
in vec2 a_tex_coord;

out vec2 v_tex_coord;

uniform mat4 u_modelViewProj;

void main()
{
    gl_Position = u_modelViewProj * vec4(a_position, 0.5f, 1.0f);

    v_tex_coord = a_tex_coord;
}
)text";

static const char *const fragText = R"text(
#version 130

out in v_tex_coord;

uniform sampler2D u_texture;

void main()
{
    gl_FragColor = vec4(texture2D(u_texture, v_tex_coord).a);
}
)text";

namespace Base {
class Text : public Base::Object {
public:
  Text();
  ~Text();
  void Draw(bvec2i raster_box) override;

private:
  std::string text = "Test";
  bvec2i position = bvec2i(0, 0);
  float scale = 24.f;
  BaseShader *textshader;
  BaseVertexArray *varray;
};

} // namespace Base