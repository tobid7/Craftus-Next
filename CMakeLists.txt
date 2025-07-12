cmake_minimum_required(VERSION 3.22)

project(Craftus-Next LANGUAGES C CXX ASM)

# 3DS Specific Config
set(APP_NAME "Craftus Next")
set(APP_DESC "Minecraft clone for the 3ds")
set(APP_AUTHOR "tobid7")
set(APP_ICON "${CMAKE_SOURCE_DIR}/app/icon.png")
set(APP_ROMFS "${CMAKE_SOURCE_DIR}/romfs")

set(APP_BANNER "${CMAKE_SOURCE_DIR}/app/${PROJECT_NAME}.cgfx")
set(APP_BANNERAUDIO "${CMAKE_SOURCE_DIR}/app/${PROJECT_NAME}.wav")
set(APP_RSF "${CMAKE_SOURCE_DIR}/app/${PROJECT_NAME}.rsf")
# set(APP_LOGO "${CMAKE_SOURCE_DIR}/app/${PROJECT_NAME}.lz")
set(3DS_IP "192.168.2.224" CACHE STRING "3ds IP (make send)")

# Force C++ 20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# Enable Compile Command Export
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Output config
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin) # Link bin to source dir

# `$(PREFIX)pkg-config opusfile --cflags` part of the makefile
find_package(PkgConfig REQUIRED)
pkg_check_modules(OPUSFILE REQUIRED opusfile)
include_directories(${OPUSFILE_INCLUDE_DIRS})
add_definitions(${OPUSFILE_CFLAGS_OTHER})
# Import Extras
add_subdirectory(dependencies/ini)
add_subdirectory(dependencies/lodepng)
add_subdirectory(dependencies/miniz)
add_subdirectory(dependencies/mpack)
add_subdirectory(dependencies/playback)
add_subdirectory(dependencies/sino)
add_subdirectory(dependencies/vec)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_C_FLAGS} -fno-rtti -O2")

find_program(PICASSO NAMES picasso REQUIRED)
find_program(MAKEROM NAMES makerom REQUIRED)
find_program(BANNERTOOL NAMES bannertool REQUIRED)
set(GUI_SHBIN "${CMAKE_BINARY_DIR}/gui.shbin")
set(WORLD_SHBIN "${CMAKE_BINARY_DIR}/world.shbin")
# Need to build shaders during config stage :(
execute_process(
    COMMAND ${PICASSO} -o ${GUI_SHBIN} ${CMAKE_SOURCE_DIR}/source/rendering/gui.v.pica
    RESULT_VARIABLE GUI_RESULT
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)
execute_process(
    COMMAND ${PICASSO} -o ${WORLD_SHBIN} ${CMAKE_SOURCE_DIR}/source/rendering/world.v.pica
    RESULT_VARIABLE WORLD_RESULT
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

dkp_add_embedded_binary_library(world_asm ${CMAKE_BINARY_DIR}/world.shbin)
dkp_add_embedded_binary_library(gui_asm ${CMAKE_BINARY_DIR}/gui.shbin)

add_compile_options(
    -Wall
    -Wno-psabi
    -O2
    -save-temps
    -Wno-declaration-missing-parameter-type
    -Wno-implicit-function-declaration
    -Wno-incompatible-pointer-types
    -Wno-implicit-int
)

add_executable(Craftus-Next
    source/main.c

    source/blocks/Block.c
    source/blocks/BlockEvent.c
    source/blocks/Item.c
    source/blocks/Liquids.c
    
    source/entity/Damage.c
    source/entity/Player.c
    source/entity/PlayerController.c

    source/gui/CrashMenu.c
    source/gui/DeathMenu.c
    source/gui/DebugUI.c
    source/gui/FontLoader.c
    source/gui/Gui.c
    source/gui/Inventory.c
    source/gui/OptionsMenu.c
    source/gui/PauseMenu.c
    source/gui/SpriteBatch.c
    source/gui/TitleMenu.c
    source/gui/WorldSelect.c

    source/misc/Collision.c
    source/misc/CommandLine.c
    source/misc/Crash.c
    source/misc/noise.c
    source/misc/Raycast.c
    source/misc/Sound.c

    source/rendering/Camera.c
    source/rendering/Clouds.c
    source/rendering/Cursor.c
    source/rendering/Hand.c
    source/rendering/PolyGen.c
    source/rendering/Renderer.c
    source/rendering/TextureMap.c
    source/rendering/VBOCache.c
    source/rendering/VertexFmt.c
    source/rendering/WorldRenderer.c

    source/world/savegame/SaveManager.c
    source/world/savegame/SuperChunk.c
    source/world/worldgen/biomes/Biome.c
    source/world/worldgen/biomes/Desert.c
    source/world/worldgen/biomes/Forest.c
    source/world/worldgen/biomes/Plains.c
    source/world/worldgen/biomes/Savanna.c
    source/world/worldgen/structures/AcaciaTree.c
    source/world/worldgen/structures/BirchTree.c
    source/world/worldgen/structures/OakTree.c
    source/world/worldgen/structures/Pumpkins.c
    source/world/worldgen/structures/TreeGen.c
    source/world/worldgen/DefaultGen.c
    source/world/worldgen/FlatBedrock.c
    source/world/worldgen/SmeaGen.c
    source/world/worldgen/SuperFlatGen.c
    source/world/Chunk.c
    source/world/ChunkWorker.c
    source/world/Direction.c
    source/world/WorkQueue.c
    source/world/World.c
)
target_include_directories(Craftus-Next PUBLIC include)
target_link_libraries(Craftus-Next PUBLIC
    ini
    miniz
    lodepng
    mpack
    sino
    vec
    # playback
    gui_asm   # Gui Shader
    world_asm # World Shader
    citro3d
    ctru
    m
)

add_dependencies(Craftus-Next gui_asm world_asm)

target_include_directories(Craftus-Next PUBLIC 
${DEVKITPRO}/portlibs/3ds/include
)
# Command to send to console (make send)
add_custom_target(
    send
    COMMAND 3dslink -a "${3DS_IP}" "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.3dsx"
)

# Generate 3DSX
ctr_generate_smdh(
    ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.smdh
    NAME "${APP_NAME}"
    DESCRIPTION "${APP_DESC}"
    AUTHOR "${APP_AUTHOR}"
    ICON "${APP_ICON}"
)
ctr_create_3dsx(
    Craftus-Next
    OUTPUT "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.3dsx"
    SMDH "${CMAKE_BINARY_DIR}/${PROJECT_NAME}.smdh"
    ROMFS "${APP_ROMFS}"
    DEPENDS create_resources
)


add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bnr
    COMMAND ${BANNERTOOL} makebanner
    -ci ${APP_BANNER}
    -a ${APP_BANNERAUDIO}
    -o ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bnr
    DEPENDS ${APP_BANNER} ${APP_BANNERAUDIO}
    COMMENT "Creating Banner for cia file..."
    VERBATIM
)

add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.cia
    COMMAND ${MAKEROM}
    -f cia -target t -exefslogo
    -o "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.cia"
    -elf "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.elf"
    -rsf ${APP_RSF}
    -banner "${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bnr"
    -icon "${CMAKE_BINARY_DIR}/${PROJECT_NAME}.smdh"
    -DAPP_ROMFS="${APP_ROMFS}"
    -major 1 -minor 0 -micro 0
    -DAPP_VERSION_MAJOR=1
    DEPENDS ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.elf ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.smdh
    COMMENT "Creating Cia file..."
    VERBATIM
)

add_custom_target(make_banner ALL
    DEPENDS ${APP_BANNER}
)

add_custom_target(make_cia ALL
    DEPENDS ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bnr ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.elf ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.cia
)