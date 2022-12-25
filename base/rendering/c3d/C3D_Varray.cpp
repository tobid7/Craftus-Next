#include <rendering/c3d/C3D_VArray.hpp>
#include <string>
#include <sstream>

unsigned long hex2dec(std::string hex)
{
    unsigned long result = 0;
    for (int i=0; i<hex.length(); i++) {
        if (hex[i]>=48 && hex[i]<=57)
        {
            result += (hex[i]-48)*pow(16,hex.length()-i-1);
        } else if (hex[i]>=65 && hex[i]<=70) {
            result += (hex[i]-55)*pow(16,hex.length( )-i-1);
        } else if (hex[i]>=97 && hex[i]<=102) {
            result += (hex[i]-87)*pow(16,hex.length()-i-1);
        }
    }
    return result;
}

int CalcPMT(int numattr)
{
  int res;
  std::string hexstr = "0x";
  for (int i = numattr; i > -1; i--)
  {
    hexstr += std::to_string(i);
  }
  res = hex2dec(hexstr);
  
  return res;
}

namespace Base {
void C3D_VertexArray::I_Create(const void *data, uint32_t numVertices,
                             size_t vtxsize) {
  attrinfo = C3D_GetAttrInfo();
  AttrInfo_Init(attrinfo);
  vbo_data = data;
}

void C3D_VertexArray::I_Destroy() {}

void C3D_VertexArray::I_Bind() {
  buffinfo = C3D_GetBufInfo();
  BufInfo_Init(buffinfo);
  BufInfo_Add(buffinfo, vbo_data, vtx_size, numAttr, CalcPMT(numAttr-1));
}

void C3D_VertexArray::I_UnBind() {}

void C3D_VertexArray::I_AddAttrInfo(int index, int size, int type,
                                  bool normmalized, size_t stride,
                                  const void *pointer) {
  AttrInfo_AddLoader(attrinfo, index, GPU_FLOAT, size);
  numAttr++;
}

void C3D_VertexArray::I_UpdateSubData(const void *data, int offs, size_t size) {}
} // namespace Base