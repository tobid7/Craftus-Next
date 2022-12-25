#########################################################################################
set(DEVKITPRO $ENV{DEVKITPRO})

# DevkitPro Paths are broken on windows, so we have to fix those
macro(msys_to_cmake_path MsysPath ResultingPath)
	if(WIN32)
		string(REGEX REPLACE "^/([a-zA-Z])/" "\\1:/" ${ResultingPath} "${MsysPath}")
	else()
		set(${ResultingPath} "${MsysPath}")
	endif()
endmacro()

msys_to_cmake_path("$ENV{DEVKITPRO}" DEVKITPRO)
msys_to_cmake_path("$ENV{DEVKITARM}" DEVKITARM)

set(CMAKE_SYSTEM_NAME "Nintendo 3ds")
if(WIN32)
    set(CMAKE_C_COMPILER "C:/devkitPro/devkitARM/bin/arm-none-eabi-gcc.exe")
    set(CMAKE_CXX_COMPILER "C:/devkitPro/deckitARM/bin/arm-none-eabi-g++.exe")
    set(CMAKE_AR "C:/devkitPro/deckitARM/bin/arm-none-eabi-gcc-ar.exe" CACHE STRING "")
    set(CMAKE_RANLIB "C:/devkitPro/deckitARM/bin/arm-none-eabi-gcc-ranlib.exe" CACHE STRING "")
    set(CMAKE_ASM_COMPILER "C:/devkitPro/devkitARM/bin/arm-none-eabi-gcc.exe")
else()
    set(CMAKE_C_COMPILER "${DEVKITARM}/bin/arm-none-eabi-gcc")
    set(CMAKE_CXX_COMPILER "${DEVKITARM}/bin/arm-none-eabi-g++")
    set(CMAKE_AR "${DEVKITARM}/bin/arm-none-eabi-gcc-ar" CACHE STRING "")
    set(CMAKE_RANLIB "${DEVKITARM}/bin/arm-none-eabi-gcc-ranlib" CACHE STRING "")
    set(CMAKE_ASM_COMPILER "${DEVKITPRO}/devkitARM/bin/arm-none-eabi-gcc")
endif()

set(ARCH "-march=armv6k -mtune=mpcore -mfloat-abi=hard -mfpu=vfp -mtp=soft -D__3DS__")
set(CMAKE_C_FLAGS "${ARCH} -Wall -mword-relocations -O3 -fomit-frame-pointer -ffunction-sections -fdata-sections" CACHE STRING "C flags")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -fno-rtti -std=gnu++20" CACHE STRING "C++ flags")
set(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_FIND_ROOT_PATH ${DEVKITPRO}/devkitARM ${DEVKITPRO}/libctru ${DEVKITARM}/portlibs/3ds)

set(BUILD_SHARED_LIBS OFF CACHE INTERNAL "Shared libs not available")

link_directories(${DEVKITPRO}/libcrtu/lib ${DEVKITPRO}/portlibs/3ds/lib)
#########################################################################################