#pragma once
#include <map>
#include <rendering/Renderer_Def.hpp>

static const char *const vertText = R"text(
#version 120

attribute vec2 a_position;
attribute vec2 a_tex_coord;

varying vec2 v_tex_coord;

uniform mat4 u_modelViewProj;

void main()
{
    gl_Position = u_modelViewProj * vec4(a_position, 0.5f, 1.0f);

    v_tex_coord = a_tex_coord;
}
)text";

static const char *const fragText = R"text(
#version 120

varying vec2 v_tex_coord;

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