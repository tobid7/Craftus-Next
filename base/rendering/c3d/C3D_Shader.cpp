#include <rendering/c3d/C3D_Shader.hpp>
#include <pica.hpp>

namespace Base
{
    void C3D_Shader::I_Compile(const char *vertexcode, const char *fragmentcode,
                               const char *geometrycode)
    {
        int ressize;
        char *vtx_bin = Pica::AssembleCode(vertexcode, ressize);
        // Load the vertex shader, create a shader program and bind it
        m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
        shaderProgramInit(&m_shader);
        shaderProgramSetVsh(&m_shader, &m_dvlb->DVLE[0]);
        C3D_BindProgram(&m_shader);
    }

    void C3D_Shader::I_CompileFile(const char *vertexPath, const char *fragmentPath,
                                   const char *geometryPath)
    {
        int ressize;
        char *vtx_bin = Pica::AssembleFile(vertexPath, ressize);
        // Load the vertex shader, create a shader program and bind it
        m_dvlb = DVLB_ParseFile((u32 *)vtx_bin, ressize);
        shaderProgramInit(&m_shader);
        shaderProgramSetVsh(&m_shader, &m_dvlb->DVLE[0]);
        C3D_BindProgram(&m_shader);
    }

    void C3D_Shader::I_use() { C3D_BindProgram(&m_shader); }

    void C3D_Shader::I_setBool(const std::string &name, bool value)
    {
    }
    void C3D_Shader::I_setInt(const std::string &name, int value)
    {
    }
    void C3D_Shader::I_setFloat(const std::string &name, float value)
    {
    }
    void C3D_Shader::I_setVec2(const std::string &name, const glm::vec2 &value)
    {
    }
    void C3D_Shader::I_setVec2(const std::string &name, float x, float y)
    {
    }
    void C3D_Shader::I_setVec3(const std::string &name, const glm::vec3 &value)
    {
    }
    void C3D_Shader::I_setVec3(const std::string &name, float x, float y, float z)
    {
    }
    void C3D_Shader::I_setVec4(const std::string &name, const glm::vec4 &value)
    {
    }
    void C3D_Shader::I_setVec4(const std::string &name, float x, float y, float z,
                               float w)
    {
    }
    void C3D_Shader::I_setMat2(const std::string &name, const glm::mat2 &mat)
    {
    }
    void C3D_Shader::I_setMat3(const std::string &name, const glm::mat3 &mat)
    {
    }
    void C3D_Shader::I_setMat4(const std::string &name, const glm::mat4 &mat)
    {
        
    }

} // namespace Base