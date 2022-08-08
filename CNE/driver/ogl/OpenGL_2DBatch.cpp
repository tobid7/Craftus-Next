#include "OpenGL_2DBatch.hpp"

extern int rwidth;
extern int rheight;


void CNi::GL_2DBatch::DrawRect(int x, int y, int w, int h, CNE::Color t_col)
{
    // configure VAO/VBO
    unsigned int VBO;
    float vertices[] = { 
        // pos      // tex
        (float)(x/rwidth), (float)(w/rwidth), 0.0f, 1.0f,
        (float)(y/rheight), (float)(h/rheight), 1.0f, 0.0f,
        (float)(y/rheight), (float)(w/rwidth), 0.0f, 0.0f, 
        (float)(w/rheight), (float)(y/rheight), 0.0f, 1.0f,
        (float)(h/rheight), (float)(w/rwidth), 1.0f, 1.0f,
        (float)(w/rwidth), (float)(h/rheight), 1.0f, 0.0f
    };
    glGenVertexArrays(1, &this->quadVAO);
    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glBindVertexArray(this->quadVAO);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);  
    glBindVertexArray(0);
    baseshader.Use();
    glDrawArrays(GL_TRIANGLES, 0, sizeof(vertices));
}
void CNi::GL_2DBatch::DrawRectF(float x, float y, float w, float h, CNE::Color t_col)
{

}
void CNi::GL_2DBatch::DrawText(int x, int y, float size, CNE::Color t_col, std::string t_text)
{

}
void CNi::GL_2DBatch::DrawCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight)
{

}
namespace CNi
{
    GL_2DBatch::GL_2DBatch(void)
    {
        baseshader.Compile(vertTex, fragTex);
    }
}