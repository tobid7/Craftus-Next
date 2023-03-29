
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
#include <objects/Text.hpp>
#include <external/stb_truetype.h>
#include <external/stb_image_write.h>
#include <cstring>

struct FontVertex {
    glm::vec2 position;
    glm::vec2 texCoords;
};

struct Font
{
    public:
    ~Font() {
        if(fontVertexBufferData) {
            delete[]fontVertexBufferData;
        }
    }

    void initFont(const char* filename) {
        uint8_t *ttfBuffer = new uint8_t[1<<20];
        uint8_t tmpBitmap[512*512];
        fontshader.LoadCode(vertText, fragText);
        fread(ttfBuffer, 1, 1<<20, fopen(filename, "rb"));
        stbtt_BakeFontBitmap(ttfBuffer, 0, 32.0f, tmpBitmap, 512, 512, 32, 96, cdata);

        fontTexture.LoadPixels(tmpBitmap, 512, 512, 1);

        fontVertexBufferCapacity = 20;
        fontVertexBufferData = new FontVertex[fontVertexBufferCapacity * 6];
        fontVao.Create(fontVertexBufferData, sizeof(FontVertex) * 6 * fontVertexBufferCapacity, 0);
        fontVao.AddAttrInfo(0, 2, 0, 0, sizeof(FontVertex), 0);
        fontVao.AddAttrInfo(1, 2, 0, 0, sizeof(FontVertex), (const void*)offsetof(FontVertex, texCoords));
        fontVao.UnBind();
    }

    void drawString(float x, float y, const char* text) {
        fontVao.Bind();

        uint32_t len = strlen(text);
        if(fontVertexBufferCapacity < len) {
            fontVertexBufferCapacity = len;
            fontVao.Destroy();
            fontVao.Create(fontVertexBufferData, sizeof(FontVertex) * 6 * fontVertexBufferCapacity, 0);
            delete[]fontVertexBufferData;
            fontVertexBufferData = new FontVertex[fontVertexBufferCapacity * 6];
        }

        fontTexture.Bind();
        fontshader.use();
        fontshader.setInt("u_texture", 0);

        FontVertex* vData = fontVertexBufferData;
        uint32_t numVertices = 0;
        while(*text) {
            if(*text >= 32 && *text < 128) {
                stbtt_aligned_quad q;
                stbtt_GetBakedQuad(cdata, 512, 512, *text-32, &x, &y, &q, 1);
                
                vData[0].position = glm::vec2(q.x0, q.y0); vData[0].texCoords = glm::vec2(q.s0, q.t0);
                vData[1].position = glm::vec2(q.x1, q.y0); vData[1].texCoords = glm::vec2(q.s1, q.t0);
                vData[2].position = glm::vec2(q.x1, q.y1); vData[2].texCoords = glm::vec2(q.s1, q.t1);
                vData[3].position = glm::vec2(q.x0, q.y1); vData[3].texCoords = glm::vec2(q.s0, q.t1);
                vData[4].position = glm::vec2(q.x0, q.y0); vData[4].texCoords = glm::vec2(q.s0, q.t0);
                vData[5].position = glm::vec2(q.x1, q.y1); vData[5].texCoords = glm::vec2(q.s1, q.t1);

                vData += 6;
                numVertices += 6;
            }
            ++text;
        }
        fontVao.UpdateSubData(fontVertexBufferData, sizeof(FontVertex)*numVertices,  sizeof(FontVertex) * 6 * fontVertexBufferCapacity);
        Base_drawArrays(0, numVertices);
    }


    private:
    stbtt_bakedchar cdata[96];
    BaseTexture fontTexture;
    BaseVertexArray fontVao;
    BaseShader fontshader;
    FontVertex* fontVertexBufferData = 0;
    uint32_t fontVertexBufferCapacity;
};

Font font;

namespace Base
{
    Text::Text()
    {
        //font.initFont("res/Font.ttf");
    }
    
    Text::~Text()
    {
        
    }
    
    void Text::Draw(bvec2i raster_box)
    {
        //font.drawString(position.x, position.y, this->text.c_str());
    }
}