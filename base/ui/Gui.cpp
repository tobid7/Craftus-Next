#include <ui/Gui.hpp>

#include <glm/gtc/matrix_transform.hpp>

#include <Shader.hpp>
#include <VArray.hpp>
#include <Renderer.hpp>

static const char *const vertSquare = R"text(  
    #version 330 core
    layout (location = 0) in vec2 aPos;
    layout (location = 1) in vec4 aColor;
    out vec4 oColor;
    uniform mat4 model;
    uniform mat4 projection;

    void main()
    {
        oColor = aColor;
        gl_Position = projection * model * vec4(aPos.xy, 0.0, 1.0);
    }
)text";

static const char *const fragSquare = R"text(
    #version 330 core
    in vec4 iColor;
    out vec4 color;
    
    void main()
    {    
        color = iColor;
    }  
)text";

static const char *const vertSprite = R"text(  
    #version 330 core
    layout (location = 0) in vec4 vertex; // <vec2 position, vec2 texCoords>
    out vec2 TexCoords;
    uniform mat4 model;
    uniform mat4 projection;
    void main()
    {
        TexCoords = vertex.zw;
        gl_Position = projection * model * vec4(vertex.xy, 0.0, 1.0);
    }
)text";

static const char *const fragSprite = R"text(
    #version 330 core
    in vec2 TexCoords;
    out vec4 color;
    
    uniform sampler2D image;
    uniform vec4 spriteColor;
    
    void main()
    {    
        vec4 texColor = texture(image, TexCoords);
        if(texColor.a < 0.1)
            discard;
        color = spriteColor * texColor;
    }  
)text";

Base::Shader *square_shader = nullptr;
Base::VertexArray *quad_varray = nullptr;
Base::Renderer *t_ren = nullptr;

namespace Base {
namespace Gui {
static int llc_w;
static int llc_h;
static int llc_scale;
Base::Texture *LLC_Widgets = nullptr;

void Init(int w, int h) {
  llc_w = w;
  llc_h = h;
  square_shader->LD7();
  quad_varray->LD7();
  t_ren->LD7();
  LLC_Widgets->LD7();
  LLC_Widgets->Load("res/mcpack/assets/minecraft/textures/gui/widgets.png");
  square_shader->Compile(vertSquare, fragSquare);
  square_shader->use();
  UiSquare square[] = 
  {
    {{1, 0}, {1, 1, 1, 1.f}},
    {{1, 0}, {1, 1, 1, 1.f}},
    {{0, 0}, {1, 1, 1, 1.f}},

    {{0, 1}, {1, 1, 1, 1.f}},
    {{1, 1}, {1, 1, 1, 1.f}},
    {{1, 0}, {1, 1, 1, 1.f}},
  };  
  quad_varray->Create(&square, 6, sizeof(UiSquare));
  quad_varray->AddAttrInfo(0, 2, 0, false, sizeof(UiSquare),
                          (void *)offsetof(UiSquare, position));
  quad_varray->AddAttrInfo(1, 4, 0, false, sizeof(UiSquare),
                          (void *)offsetof(UiSquare, color));
  quad_varray->UnBind();
}

void UpdateScreenSize(int w, int h) {
  llc_w = w;
  llc_h = h;
}

void SetUiScale(float scale) { llc_scale = scale; }

void DrawButton(int flg, float x, float y) {

  if (flg & Base::Gui::ButtonFLG_NONE) {
  }
  if (flg & Base::Gui::ButtonFLG_HOVERED) {
  }
  if (flg & Base::Gui::ButtonFLG_CLICKED) {
  }
}

void DrawTextureQuad(float x, float y, float u1, float v1, float u2, float v2,
                     Base::Texture *tex) {}

void DrawQuad(float x, float y, float w, float h, color_t color) {
  quad_varray->Bind();
  square_shader->use();
  glm::mat4 model = glm::mat4(1.0f);
  model = glm::translate(model, glm::vec3(glm::vec2(x, y), 0.0f));

  model = glm::translate(model, glm::vec3(0.5f * (w), 0.5f * (h), 0.0f));

  glm::mat4 projection =
      glm::ortho(0.0f, static_cast<float>(llc_w), static_cast<float>(llc_h),
                 0.0f, -1.0f, 1.0f);
  square_shader->setMat4("projection", projection);

  square_shader->setMat4("model", model);

}
} // namespace Gui
} // namespace Base