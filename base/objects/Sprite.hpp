#pragma once
#include <objects/Object.hpp>
#include <rendering/Renderer_Def.hpp>
#include <rendering/Vertex.hpp>

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"

static const char *const vertTri = R"text(
#version 330 core
layout (location = 0) in vec2 vertex;
layout (location = 0) in vec2 texc;

out vec2 TexCoords;

uniform mat4 model;
uniform mat4 projection;

void main()
{
    TexCoords = texc;
    gl_Position = projection * model * vec4(vertex.xy, 0.0, 1.0);
}
)text";

static const char *const fragTri = R"text(

#version 330 core
in vec2 TexCoords;
out vec4 color;

uniform sampler2D image;
uniform vec3 spriteColor;

void main()
{    
    color = vec4(spriteColor, 1.0) * texture(image, TexCoords);
}  
)text";

namespace Base {
class Sprite : public Base::Object {
public:
  Sprite() {
    Base::UiSquare vtx[] = {
        {{0.0f, 1.0f}, {0.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 0.0f}, {1.0f, 0.0f}, {0, 0, 0, 0}},
        {{0.0f, 0.0f}, {0.0f, 0.0f}, {0, 0, 0, 0}},

        {{0.0f, 1.0f}, {0.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 1.0f}, {1.0f, 1.0f}, {0, 0, 0, 0}},
        {{1.0f, 0.0f}, {1.0f, 0.0f}, {0, 0, 0, 0}},
    };
    trishader = new BaseShader();
    trishader->LoadCode(vertTri, fragTri);
    trishader->use();

    vao_ = new BaseVertexArray();
    vao_->Create(&vtx, NPI_ARS(vtx), sizeof(Base::UiSquare));
    vao_->AddAttrInfo(0, 2, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, position));
    vao_->AddAttrInfo(1, 2, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, texcoords));
    vao_->AddAttrInfo(2, 4, 0, false, sizeof(Base::UiSquare),
                      (void *)offsetof(Base::UiSquare, color));
    vao_->UnBind();
  }
  void Draw(bvec2i raster_box) override {
    trishader->use();
    glm::mat4 projection = glm::ortho(0.0f, (float)raster_box.x,
                                      (float)raster_box.y, 0.0f, -1.0f, 1.0f);
    glm::mat4 model = glm::mat4(1.0f);
    model = glm::translate(model, glm::vec3(glm::vec2(position.x, position.y), 0.0f));

    model = glm::translate(model, glm::vec3(0.5f * texture->GetSize().x,
                                            0.5f * texture->GetSize().y, 0.0f));
    model = glm::rotate(model, glm::radians(rot), glm::vec3(0.0f, 0.0f, 1.0f));
    model =
        glm::translate(model, glm::vec3(-0.5f * texture->GetSize().x,
                                        -0.5f * texture->GetSize().y, 0.0f));

    model = glm::scale(
        model, glm::vec3(texture->GetSize().x, texture->GetSize().y, 1.0f));

    this->trishader->setMat4("projection", projection);
    this->trishader->setMat4("model", model);
    this->trishader->setVec3("spriteColor", glm::vec3(1.0f));
    texture->Bind();
    vao_->Bind();
    Base_drawArrays(0, 6);
    vao_->UnBind();
  }

  void SetTexture(BaseTexture &tex) {
    texture = new BaseTexture;
    texture = &tex;
  }

private:
  BaseVertexArray *vao_;
  BaseShader *trishader;
  BaseTexture *texture;
  bvec2f position = bvec2f(0, 0);
  bvec2f scale = bvec2f(1, 1);
  float rot = 0;
};
} // namespace Base