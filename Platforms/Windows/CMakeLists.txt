cmake_minimum_required( VERSION 3.1 )

project( Craftus-Next LANGUAGES C CXX )

include_directories( src glad ../../CNE/external/ ../../CNE/ ../../CNE/driver/def ../../CNE/driver/ogl ../../CNE/Graphics ../../CNE/Graphics/API glm glfw)

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )
add_subdirectory( ../../CNE/external/glm/ glm)
add_subdirectory(GLFW3)
add_subdirectory( ../../CNE/external/OpenGL/ glad)

set(APP_ICON_RESOURCE_WINDOWS "${CMAKE_CURRENT_SOURCE_DIR}/icon.rc")


#set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")

#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic,--whole-archive -Wl,--no-whole-archive -Wl,--no-as-needed -ldl")

#if( MSVC )
 #   SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
#endif()

set( Craftus-Next-SRC
    src/main.cpp
    ../../CNE/driver/ogl/OpenGL_Renderer.cpp
    ../../CNE/Graphics/Color.cpp
    ../../CNE/Graphics/API/API.cpp
    ../../CNE/Graphics/API/Renderer.cpp
    ../../CNE/driver/ogl/OpenGL_Shader.cpp
    ../../CNE/driver/ogl/OpenGL_Texture.cpp
    ../../CNE/driver/ogl/OpenGL_2DBatch.cpp
    ../../CNE/driver/ogl/Camera.cpp
    #src/stb_image.h
    ${APP_ICON_RESOURCE_WINDOWS}
    )
     
add_executable(Craftus-Next WIN32 ${Craftus-Next-SRC} )

target_link_libraries( Craftus-Next glad glm glfw)
if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'Craftus-Next' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT Craftus-Next )
    endif()
endif()