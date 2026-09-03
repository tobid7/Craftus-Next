#pragma once

#include <cn/misc/ResourceMgr.hpp>

namespace CN {
namespace RC {
const PD::u32 MiracodeFont =
    RCID("romfs:/fonts/Miracode.ttf", CN::RCID::FontTTF);
const PD::u32 MiracodeFontDebug =
    RCID("romfs:/fonts/Miracode.ttf", CN::RCID::FontTTF);
const PD::u32 CraftusLogo =
    RCID("romfs:/assets/textures/gui/title/craftus.png", CN::RCID::Texture);
const PD::u32 GuiIcons =
    RCID("romfs:/assets/textures/gui/icons.png", CN::RCID::Texture);
const PD::u32 GuiBG = RCID("romfs:/assets/textures/gui/options_background.png",
                           CN::RCID::Texture);
const PD::u32 GuiWidgets =
    RCID("romfs:/assets/textures/gui/widgets.png", CN::RCID::Texture);
}  // namespace RC
}  // namespace CN