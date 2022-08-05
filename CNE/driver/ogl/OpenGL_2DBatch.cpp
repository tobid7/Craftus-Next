#include <OpenGL_2DBatch.hpp>

CNEi::GL_2DBatch::GL_2DBatch()
{
    baseshader.Compile(vertTex, fragTex);
}
CNEi::GL_2DBatch::~GL_2DBatch()
{

}
void CNEi::GL_2DBatch::DrawStack()
{

}
void CNEi::GL_2DBatch::AddRect(int x, int y, int w, int h, CNE::Color t_col)
{

}
void CNEi::GL_2DBatch::AddRectF(float x, float y, float w, float h, CNE::Color t_col)
{

}
void CNEi::GL_2DBatch::AddText(int x, int y, float size, CNE::Color t_col, std::string t_text)
{

}
void CNEi::GL_2DBatch::AddCentered(int x, int y, float size, CNE::Color t_col, std::string t_text, int maxwidth, int maxheight)
{
    
}