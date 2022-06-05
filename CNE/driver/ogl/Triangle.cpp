#include "Triangle.hpp"

namespace CNE
{
    Triangle::Triangle()
    {
        m_width = 1;
        m_length = 1;
        m_height = 1;
        shader.Compile(vert2D_Basic, fragBasic);
    }
    Triangle::~Triangle()
    {
        
    }
    void Triangle::Draw()
    {
        shader.Use();
    }
    void Triangle::setLength(float t_length) {
        m_length = t_length;
    }

    float Triangle::getLength() {
        return m_length;
    }

    void Triangle::setWidth(float t_width) {
        m_width = t_width;
    }

    float Triangle::getWidth() {
        return m_width;
    }

    void Triangle::setHeight(float t_height) {
        m_height = t_height;
    }

    float Triangle::getHeight() {
        return m_height;
    }

    // private methods
    void Triangle::update() {
        
    }
}