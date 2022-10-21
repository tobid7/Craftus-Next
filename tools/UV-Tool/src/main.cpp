#include <NImGui/NImGui.hpp>

int main()
{
    NImGui::App UV("Base-UV-Generator", NImGui::Vec2i(900, 400), NImGui::NORESIZE);
    UV.LoadIcon("res/icon.png");
    NImGui::Image img;
    img.LoadImage("res/icon.png");
    while (UV.IsRunning())
    {
        ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
        ImGui::Begin("Base-UV-Tool", NULL, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoDecoration);
        ImGui::SetWindowPos(ImVec2(UV.GetWindowPos().x, UV.GetWindowPos().y));
        ImGui::SetWindowSize(ImVec2(UV.GetWindowSize().x, UV.GetWindowSize().y));
        
        ImGui::Image(img.GetTextureID(), img.GetSize());
        ImGui::End();
        UV.SwapBuffers();
    }
    
    return 0;
}