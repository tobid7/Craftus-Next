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
#pragma once
#include <functional>
#include <map>
#include <rendering/Renderer.hpp>
#include <vector>

namespace Base {
class C3D_Renderer : public Renderer {
public:
  C3D_Renderer() {}
  ~C3D_Renderer();
  void Init(int &vieport_width, int &vieport_height) override;
  void Clear() override;
  void Render() override;
  void AddObject(Base::Object &obj, Base::RMode mode = RMode::FLAT,
                 int layer = 0);

private:
  Color clearcolor;
  int *m_vp_w = 0;
  int *m_vp_h = 0;
  std::map<int, std::vector<std::pair<Base::Object *, std::function<bool()>>>,
           std::less<int>>
      m_DrawStack2d, m_DrawStack3d;
};
} // namespace Base