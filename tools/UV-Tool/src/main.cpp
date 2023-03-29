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
#include <NImGui/NImGui.hpp>
#include <json.hpp>

#include <fstream>

bool itm = false;
bool abt = false;

void HandleMenuBar() {
  itm = false;
  if (ImGui::BeginMenuBar()) {
    if (ImGui::BeginMenu("File")) {
      if (ImGui::MenuItem("Exit", "Strg + Q", &itm)) {
        exit(EXIT_SUCCESS);
      }
      ImGui::EndMenu();
    }
    if (ImGui::BeginMenu("About")) {
      if (ImGui::MenuItem("Software", "None", &itm)) {
        abt = true;
      }
      ImGui::EndMenu();
    }
    ImGui::EndMenuBar();
  }
}

int main() {
  NImGui::App UV("Base-UV-Generator", NImGui::Vec2i(900, 400),
                 NImGui::NORESIZE);
  UV.LoadIcon("res/icon.png");
  NImGui::Image img;
  img.LoadImage("res/icon.png");
  nlohmann::json ex3;

  ex3["boat"] = {
      {"name", "boat"}, {"u1", 0.125}, {"v1", 0.0}, {"u2", 0.25}, {"v2", 0.125},
  };

  while (UV.IsRunning()) {
    ImGui::SetNextWindowViewport(ImGui::GetMainViewport()->ID);
    ImGui::Begin("Base-UV-Tool", NULL,
                 ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoResize |
                     ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_MenuBar);
    HandleMenuBar();
    ImGui::SetWindowPos(ImVec2(UV.GetWindowPos().x, UV.GetWindowPos().y));
    ImGui::SetWindowSize(ImVec2(UV.GetWindowSize().x, UV.GetWindowSize().y));

    ImGui::Image(img.GetTextureID(), img.GetSize());
    ImGui::End();
    ImGui::Begin("About", &abt, ImGuiWindowFlags_Modal);

    ImGui::End();
    UV.SwapBuffers();
  }
  remove("json.json");
  std::ofstream f("json.json", std::ios::app);
  f << ex3.dump(4);
  f.close();
  return 0;
}