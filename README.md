# Craftus Next

## Info

<img alt="GitHub milestone" src="https://img.shields.io/github/milestones/progress-percent/tobid7/Craftus-Next/3?style=for-the-badge" height="22">
<img alt="GitHub Actions Workflow Status" src="https://img.shields.io/github/actions/workflow/status/tobid7/Craftus-Next/3ds.yml?branch=main&style=for-the-badge" height="22">
<a href="https://github.com/NPI-D7/BCSTM-Player/blob/main/LICENSE"> <img height="22" src="https://img.shields.io/badge/License-GPLv3-informational.svg?style=for-the-badge" alt="License: GPLv3"></a>

<img alt="GitHub commit activity (branch)" src="https://img.shields.io/github/commit-activity/m/tobid7/Craftus-Next?style=for-the-badge" height="22">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/tobid7/Craftus-Next?style=for-the-badge" height="22">
<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/tobid7/Craftus-Next?style=for-the-badge" height="22">

A more updated version of the Craftus Minecraft Clone

## Build

Result cia, 3dsx and elf can be found in bin Directory

### Windows

On windows you need msys cmake and you need to use Ninja cause on windows palladium generates corrupted Makefiles for some unknown reason

```bash
cmake -B build -G Ninja --toolchain C:/devkitPro/cmake/3DS.cmake
cmake --build .
```

### Linux / Mac

```bash
cmake -B build --toolchain /opt/devkitpro/cmake/3DS.cmake
cmake --build
```

## Controls

| Category | Action | OLD 3DS | NEW 3DS |
| ------------- | ------------- | ------------- | ------------- |
| Blocks | Place Block | L | L |
| Blocks | Break Block | R | R |
|  |  |  |  |
| Move | Forward | Circle Pad (Up) | Circle Pad (Up) |
| Move | Backward | Circle Pad (Down) | Circle Pad (Down) |
| Move | Left | Circle Pad (Left) | Circle Pad (Left) |
| Move | Right | Circle Pad (Right) | Circle Pad (Right) |
| Move | Jump | DPad (Up) | A/B/DPad (Up) |
| Move | Shift | DPad (Down) | Y/X/DPad (Down) |
|  |  |  |  |
| Camera | Up | X | C-Stick (Up) |
| Camera | Down | B | C-Stick (Down) |
| Camera | Left | Y | C-Stick (Left) |
| Camera | Right | A | C-Stick (Right) |
|  |  |  |  |
| Inventory | Switch Block | DPad (Left) | ZL/DPad (Left) |
| Inventory | Switch Block | DPad (Right) | ZR/DPad (Right) |
|  |  |  |  |
| Commands | Open Console | Select | Select |
|  |  |  |  |
| Menu | Back | Start | Start |

## Credits

- tobid7: main dev, palladium
- Onixiya:  more updated version of craftus redesigned
- KosmicDev: better y spawning code
- GamesSanti: Craftus Redesigned
- RSDuck: Craftus and Craftus Reloaded
- XSSheep/Nova_Wostra: [Pixel Perfection](https://www.curseforge.com/minecraft/texture-packs/pixel-perfection-legacy/files/3493328) Texture Pack (Source of the Textures) CC-BY_RSA
- smea: 3dscraft, libctru
- fincs: citro3d
- Tommaso Checchi: [culling algorithm](https://tomcc.github.io/2014/08/31/visibility-1.html), orginally developed for the use in MC PE
- all other MC devs
- All people who worked on the libraries Craftus Next is depending on(see the dependencies folder)
  - rxi: vec and ini
  - richgel999: miniz
  - ludocode: mpack
  - ?: sino
  - tobid7: palladium libraries
