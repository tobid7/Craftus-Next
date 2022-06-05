#pragma once
#include "Color.hpp"
#include "RenderObject.hpp"
#include "Polygon.hpp"
#include "cne.hpp"

namespace CNE
{
    class Triangle : public CNE::RObject
    {
        public:
        Triangle();
        ~Triangle();
        void Draw() override;
        void setLength(float t_length);
        float getLength();
        void setWidth(float t_width);
        float getWidth();

        void setHeight(float t_height);
        float getHeight();
    private:
        void update();
        float m_length, m_width, m_height;
        CNE_Shader shader;
    };
}
