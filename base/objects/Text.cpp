#include <fstream>
#include <memory>
#include <objects/Text.hpp>

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"

#include <ft2build.h>
#include FT_FREETYPE_H

namespace Base {
Font::Font() {}

Font::~Font() {}

void Font::LoadTTF(std::string path) {
  FT_Library ft;
  if (FT_Init_FreeType(&ft)) {
    std::cout << "ERROR::FREETYPE: Could not init FreeType Library"
              << std::endl;
    return;
  }

  FT_Face face;
  if (FT_New_Face(ft, path.c_str(), 0, &face)) {
    std::cout << "ERROR::FREETYPE: Failed to load font" << std::endl;
    return;
  }

  FT_Set_Pixel_Sizes(face, 0, 48);

  if (FT_Load_Char(face, 'X', FT_LOAD_RENDER)) {
    std::cout << "ERROR::FREETYTPE: Failed to load Glyph" << std::endl;
    return;
  }

  for (unsigned char c = 0; c < 128; c++) {
    // load character glyph
    if (FT_Load_Char(face, c, FT_LOAD_RENDER)) {
      std::cout << "ERROR::FREETYTPE: Failed to load Glyph" << std::endl;
      continue;
    }
    auto texture = new BaseTexture();
    texture->LoadPixels(face->glyph->bitmap.buffer, face->glyph->bitmap.width,
                        face->glyph->bitmap.rows, 1);
    // now store character for later use
    FChar character = {
        texture, bvec2i(face->glyph->bitmap.width, face->glyph->bitmap.rows),
        bvec2i(face->glyph->bitmap_left, face->glyph->bitmap_top),
        face->glyph->advance.x};
    m_chars.insert(std::pair<char, FChar>(c, character));
  }

  FT_Done_Face(face);
  FT_Done_FreeType(ft);
}

Text::Text() {
  varray = new BaseVertexArray();
  varray->Create(NULL, 0, sizeof(float) * 6 * 4);
  varray->AddAttrInfo(0, 4, 0, 0, 4 * sizeof(float), 0);
  varray->UnBind();
  this->textshader = new BaseShader();
  textshader->LoadCode(vertText, fragText);
  fnt = new Base::Font();
  fnt->LoadTTF("res/Font.ttf");
}

Text::~Text() {}

void Text::Draw(bvec2i raster_box) {
  textshader->use();
  glm::mat4 projection =
      glm::ortho(0.0f, (float)raster_box.x, 0.0f, (float)raster_box.y);
  textshader->setVec3("textcolor", glm::vec3(1.f));
  varray->Bind();
  std::string::const_iterator c;
  int tempx = position.x;
  for (c = text.begin(); c != text.end(); c++) {
    Base::Font::FChar ch = fnt->GetMap()[*c];

    float xpos = tempx + ch.bearing.x * scale;
    float ypos = position.y - (ch.size.y - ch.bearing.y) * scale;

    float w = ch.size.x * scale;
    float h = ch.size.y * scale;
    // update VBO for each character
    float vertices[6][4] = {
        {xpos, ypos + h, 0.0f, 0.0f},    {xpos, ypos, 0.0f, 1.0f},
        {xpos + w, ypos, 1.0f, 1.0f},

        {xpos, ypos + h, 0.0f, 0.0f},    {xpos + w, ypos, 1.0f, 1.0f},
        {xpos + w, ypos + h, 1.0f, 0.0f}};
    // render glyph texture over quad
    ch.tex->Bind();
    // update content of VBO memory
    varray->UpdateSubData(vertices, 0, sizeof(vertices));
    // render quad
    Base_drawArrays(0, 6);
    // now advance cursors for next glyph (note that advance is number of 1/64
    // pixels)
    tempx += (ch.advance >> 6) *
             scale; // bitshift by 6 to get value in pixels (2^6 = 64)
  }
}
} // namespace Base