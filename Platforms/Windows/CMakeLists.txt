cmake_minimum_required( VERSION 3.1 )

project( Craftus-Next LANGUAGES C CXX )

include_directories( src ../../CNE/external/OpenGL/include/ ../../CNE/external/ ../../CNE/ ../../CNE/driver/def ../../CNE/driver/ogl ../../CNE/Graphics glfw glm imgui)

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

add_subdirectory( glfw )
add_subdirectory( ../../CNE/external/glm/ glm)
add_library(glad "../../CNE/external/OpenGL/include/glad/glad.h" "../../CNE/external/OpenGL/src/glad.c")


#=================== IMGUI ===================

set(IMGUI_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui)
add_library(imgui STATIC)

target_sources( imgui
                PRIVATE
                    ${IMGUI_DIR}/imgui_demo.cpp
                    ${IMGUI_DIR}/imgui_draw.cpp
                    ${IMGUI_DIR}/imgui_tables.cpp
                    ${IMGUI_DIR}/imgui_widgets.cpp
                    ${IMGUI_DIR}/imgui.cpp

                PRIVATE
                    ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
                    ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
                )

target_include_directories( imgui
                            PUBLIC ${IMGUI_DIR}
                            PUBLIC ${IMGUI_DIR}/backends
                            PUBLIC ${SDL2_DIR}/include
                            )


target_link_libraries(imgui PUBLIC glfw ${CMAKE_DL_LIBS})

set(APP_ICON_RESOURCE_WINDOWS "${CMAKE_CURRENT_SOURCE_DIR}/icon.rc")

set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ -lwsock32 -lws2_32 ${CMAKE_CXX_STANDARD_LIBRARIES}")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive")

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()

set( Craftus-Next-SRC
    src/main.cpp
    ../../CNE/driver/ogl/OpenGL_Renderer.cpp
    ../../CNE/Graphics/Color.cpp
    ../../CNE/driver/ogl/OpenGL_Shader.cpp
    #src/stb_image.h
    ${APP_ICON_RESOURCE_WINDOWS}
     )
     
add_executable( Craftus-Next WIN32 ${Craftus-Next-SRC} )
target_link_libraries( Craftus-Next glfw glad glm imgui)
if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'Craftus-Next' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT Craftus-Next )
    endif()
endif()