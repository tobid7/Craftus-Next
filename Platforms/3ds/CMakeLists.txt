cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

set(APP_TITLE "${PROJECT_NAME}")
set(APP_DESCRIPTION "Minecraft Clone for for 3DS")
set(APP_AUTHOR "Tobi-D7, tobid7vx")

set(APP_ICON "${PROJECT_SOURCE_DIR}/app/icon.png")
set(APP_ROMFS "${PROJECT_SOURCE_DIR}/romfs")

enable_language(ASM)

set(BASE_CTR ON CACHE BOOL "Enable 3ds")
add_subdirectory(../../base base)

add_executable(${PROJECT_NAME} src/main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE src base)

target_link_libraries(${PROJECT_NAME} citro2d citro3d ctru m base)

add_custom_command(
	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.smdh
	COMMAND smdhtool --create "${APP_TITLE}" "${APP_DESCRIPTION}" "${APP_AUTHOR}" "${APP_ICON}" ${PROJECT_NAME}.smdh
    DEPENDS ${PROJECT_NAME}.elf
)

add_custom_command(
	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.3dsx
	COMMAND 3dsxtool ${PROJECT_NAME}.elf ${PROJECT_NAME}.3dsx --romfs=${APP_ROMFS} --smdh=${PROJECT_NAME}.smdh
	DEPENDS ${PROJECT_NAME}.elf
)

add_custom_target( 3ds ALL
	DEPENDS ${PROJECT_NAME}.smdh ${PROJECT_NAME}.3dsx
)