cmake_minimum_required(VERSION 3.22)

project(CraftusNext)

set(BASE_DESKTOP ON CACHE BOOL "Enable Desktop")

set(ICON_WINDOWS "${CMAKE_CURRENT_SOURCE_DIR}/icon.rc")

if (UNIX)
    set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")
else()
    set(CMAKE_CXX_STANDARD_LIBRARIES "-static -ldl -static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")
endif()


#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic,--whole-archive -Wl,--no-whole-archive -Wl,--no-as-needed -ldl")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})

if (MSVC)
add_custom_target(res ALL
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${PROJECT_SOURCE_DIR}/res ${CMAKE_BINARY_DIR}/${PROJECT_NAME}/Debug/res
    DEPENDS ${MY_TARGET})
else()
add_custom_target(res ALL
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${PROJECT_SOURCE_DIR}/res ${CMAKE_BINARY_DIR}/${PROJECT_NAME}/res
    DEPENDS ${MY_TARGET})
endif()

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()

add_subdirectory(../../external/NImGui NImGui)
add_subdirectory(../../base base)


add_executable(${PROJECT_NAME} src/main.cpp ${ICON_WINDOWS})

target_include_directories(${PROJECT_NAME} PRIVATE NImGui base)

target_link_libraries(${PROJECT_NAME} base NImGui)

if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'Craftus-Next' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT Craftus-Next )
    endif()
endif()