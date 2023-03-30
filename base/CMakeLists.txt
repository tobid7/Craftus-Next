#Specify Version
cmake_minimum_required(VERSION 3.22)

#Set Project Name
project(base)

set(CMAKE_CXX_STANDARD 20) # no need to manually adjust the CXXFLAGS
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#Options
option(BASE_DESKTOP "Desktop Platform" OFF)
option(BASE_CTR "Ctr Platform" OFF)

set(BASE_VER "0.2.0")
set(BASE_NM "Base-Engine")

set(BASE_CFLAGS "-D__BASE_BUILD__")

list(APPEND BASE_CFLAGS -DBASE_VERSION=\"${BASE_VER}\" -DBASE_NAME=\"${BASE_NM}\")

set(BASE_SOURCE source/Base.cpp
source/BitmapEngine.cpp
source/bmpconverter.cpp
source/ShaderTable.cpp
source/external/lodepng.cpp source/StealConsole.cpp source/memory.cpp
source/Color.cpp source/Base_Ren_Reg.cpp source/Text.cpp)

set(BASE_EXTRAINCLUDES "")
set(BASE_EXTRADEPS "")

if(BASE_DESKTOP)
    message("Building for a Desktop Platform")
    add_subdirectory(../external/glm glm)
    list(APPEND BASE_SOURCE
    #${BASE_SOURCE}
    #OpenGL Support(3.3+)
    source/external/glad.c
    source/GL_Renderer.cpp
    source/GL_Texture.cpp
    source/GL_VertexArray.cpp
    source/GL_Shader.cpp
    )
    list(APPEND BASE_EXTRAINCLUDES
    #${BASE_EXTRAINCLUDES}
    include/external
    include/external/glad
    glm)
    list(APPEND BASE_EXTRADEPS
    #${BASE_EXTRADEPS}
    glm)
    cmake_host_system_information(RESULT DK_NAME QUERY OS_NAME)
    set(BASE_PL "Desktop -> ${DK_NAME}")
    list(APPEND BASE_CFLAGS -DBASE_PLATFORM=\"${BASE_PL}\")
    list(APPEND BASE_CFLAGS -D__BASE_DESKTOP__)
endif()

if(BASE_CTR)
    message("Building for 3ds")
    add_subdirectory(../external/glm glm)
    #add_subdirectory(../external/libpicasso picasso)
    list(APPEND BASE_SOURCE
    #${BASE_SOURCE}
    source/C3D_Renderer.cpp
    source/C3D_Texture.cpp
    source/C3D_Shader.cpp
    source/C3D_VertexArray.cpp)
    list(APPEND BASE_EXTRAINCLUDES
    #${BASE_EXTRAINCLUDES}
    ${DEVKITPRO}/libctru/include
    glm
    ../external/libpicasso/include
    )
    list(APPEND BASE_EXTRADEPS
    #${BASE_EXTRADEPS}
    citro3d
    ctru
    citro2d
    glm
    #picasso
    )
    #cmake_host_system_information(RESULT DK_NAME QUERY OS_NAME)
    set(BASE_PL "Desktop -> ${CMAKE_SYSTEM_NAME}")
    list(APPEND BASE_CFLAGS -DBASE_PLATFORM=\"${BASE_PL}\")
    list(APPEND BASE_CFLAGS -D__BASE_CTR__)
endif()

add_library(${PROJECT_NAME} ${BASE_SOURCE})

target_include_directories(${PROJECT_NAME} PUBLIC include include/basegame include/basegame/bitmapengine include/misc include/rendering ${BASE_EXTRAINCLUDES})

target_link_libraries(${PROJECT_NAME} PUBLIC ${BASE_EXTRADEPS})

target_compile_options(${PROJECT_NAME} PUBLIC ${BASE_CFLAGS})
