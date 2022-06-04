cmake_minimum_required( VERSION 3.1 )

project( Craftus-Next LANGUAGES C CXX )

include_directories( ../../CNE/external/OpenGL/include/ ../../CNE/ ../../CNE/driver/def ../../CNE/driver/ogl ../../CNE/Graphics glfw)

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

add_subdirectory( glfw )
add_subdirectory( ../../CNE/external/glm/ glm)
add_library(glad "../../CNE/external/OpenGL/include/glad/glad.h" "../../CNE/external/OpenGL/src/glad.c")

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()

set( Craftus-Next-SRC
    src/main.cpp
    ../../CNE/driver/ogl/OpenGL_Renderer.cpp
    ../../CNE/Graphics/Color.cpp
    ../../CNE/driver/ogl/OpenGL_Shader.cpp
     )
     
add_executable( Craftus-Next WIN32 ${Craftus-Next-SRC} )
target_link_libraries( Craftus-Next glfw glad ${GLM_LIBRARY_DIRS} )
if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'Craftus-Next' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT Craftus-Next )
    endif()
endif()