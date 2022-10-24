#include <NImGui/NImGui.hpp>
#include <json.hpp>

#include <fstream>

int main()
{
    NImGui::App UV("Base-UV-Generator", NImGui::Vec2i(900, 400), NImGui::NORESIZE);
    UV.LoadIcon("res/icon.png");
    NImGui::Image img;
    img.LoadImage("res/icon.png");
    nlohmann::json ex3;

    ex3["boat"] = { {"name", "boat"}, {"u1", 0.125}, {"v1", 0.0}, {"u2", 0.25}, {"v2", 0.125}, };
    
    while (UV.IsRunning())
    {
        ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
        ImGui::Begin("Base-UV-Tool", NULL, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoDecoration);
        ImGui::SetWindowPos(ImVec2(UV.GetWindowPos().x, UV.GetWindowPos().y));
        ImGui::SetWindowSize(ImVec2(UV.GetWindowSize().x, UV.GetWindowSize().y));
        
        ImGui::Image(img.GetTextureID(), img.GetSize());
        ImGui::End();
        ImGui::Begin("Base-UV-Tool2", NULL, ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoDecoration);
        ImGui::SetWindowPos(ImVec2(UV.GetWindowPos().x, UV.GetWindowPos().y));
        ImGui::SetWindowSize(ImVec2(UV.GetWindowSize().x, UV.GetWindowSize().y));
        
        ImGui::Image(img.GetTextureID(), img.GetSize());
        ImGui::End();
        UV.SwapBuffers();
    }
    remove("json.json");
    std::ofstream f("json.json", std::ios::app);
    f << ex3.dump(4);
    f.close();
    return 0;
}