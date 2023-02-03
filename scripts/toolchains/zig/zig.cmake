set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>$<$<STREQUAL:${VCPKG_CRT_LINKAGE},dynamic>:DLL>" CACHE STRING "")

if(VCPKG_TARGET_ARCHITECTURE STREQUAL "x86")
    set(CMAKE_SYSTEM_PROCESSOR x86 CACHE STRING "")
    set(ZIG_ARCH x86 CACHE STRING "")
elseif(VCPKG_TARGET_ARCHITECTURE STREQUAL "x64")
    set(CMAKE_SYSTEM_PROCESSOR AMD64 CACHE STRING "")
    set(ZIG_ARCH x86_64 CACHE STRING "")
elseif(VCPKG_TARGET_ARCHITECTURE STREQUAL "arm")
    set(CMAKE_SYSTEM_PROCESSOR ARM CACHE STRING "")
    set(ZIG_ARCH arm CACHE STRING "")
elseif(VCPKG_TARGET_ARCHITECTURE STREQUAL "arm64")
    set(CMAKE_SYSTEM_PROCESSOR ARM64 CACHE STRING "")
    set(ZIG_ARCH aarch64 CACHE STRING "")
endif()

if(DEFINED VCPKG_CMAKE_SYSTEM_VERSION)
    set(CMAKE_SYSTEM_VERSION "${VCPKG_CMAKE_SYSTEM_VERSION}" CACHE STRING "" FORCE)
endif()

if(WIN32)
    set(ZIG_OS windows CACHE STRING "")
elseif(APPLE)
    set(ZIG_OS macos CACHE STRING "")
elseif(UNIX)
    set(ZIG_OS linux CACHE STRING "")
endif()

set(ZIG_TARGET ${ZIG_ARCH}-${ZIG_OS})

if(WIN32)
    set(SCRIPT_SUFFIX ".cmd")
else()
    set(SCRIPT_SUFFIX ".sh")
endif()

find_program(ZIG zig)
set(CMAKE_C_COMPILER ${ZIG} cc -target ${ZIG_TARGET})
set(CMAKE_CXX_COMPILER ${ZIG} c++ -target ${ZIG_TARGET})
set(CMAKE_AR "${CMAKE_CURRENT_LIST_DIR}/zig-ar${SCRIPT_SUFFIX}")
set(CMAKE_RANLIB "${CMAKE_CURRENT_LIST_DIR}/zig-ranlib${SCRIPT_SUFFIX}")
