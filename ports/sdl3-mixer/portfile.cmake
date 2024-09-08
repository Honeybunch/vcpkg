vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO libsdl-org/SDL_mixer
    REF "124831c87e6e546ee905db38e1c2f6086fc3c18c"
    HEAD_REF main
    SHA512 4c1286eee6f9d1ab0e01f9e29ec7eb09749deccc409955b51bd462ecd6dd2d3e0461e9d0150f3f140e2c7eb551be5f5d8d9eaa453e307e4c84a017f46a74efd8
)

vcpkg_check_features(
    OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        fluidsynth SDLMIXER_MIDI
        fluidsynth SDLMIXER_MIDI_FLUIDSYNTH
        libflac SDLMIXER_FLAC
        libflac SDLMIXER_FLAC_LIBFLAC
        libmodplug SDLMIXER_MOD
        libmodplug SDLMIXER_MOD_MODPLUG
        mpg123 SDLMIXER_MP3
        mpg123 SDLMIXER_MP3_MPG123
        opusfile SDLMIXER_OPUS
    MAYBE_UNUSED_VARIABLES
        SDLMIXER_MP3_DRMP3
)

if("fluidsynth" IN_LIST FEATURES)
    vcpkg_find_acquire_program(PKGCONFIG)
    list(APPEND EXTRA_OPTIONS "-DPKG_CONFIG_EXECUTABLE=${PKGCONFIG}")
endif()

string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "dynamic" BUILD_SHARED)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        ${FEATURE_OPTIONS}
        ${EXTRA_OPTIONS}
        -DSDLMIXER_VENDORED=OFF
        -DSDLMIXER_SAMPLES=OFF
        -DSDLMIXER_DEPS_SHARED=OFF
        -DSDLMIXER_OPUS_SHARED=OFF
        -DSDLMIXER_VORBIS_VORBISFILE_SHARED=OFF
        -DSDLMIXER_VORBIS="VORBISFILE"
        -DSDLMIXER_FLAC_DRFLAC=OFF
        -DSDLMIXER_MIDI_NATIVE=OFF
        -DSDLMIXER_MIDI_TIMIDITY=OFF
        -DSDLMIXER_MP3_DRMP3=OFF
        -DSDLMIXER_MOD_XMP_SHARED=${BUILD_SHARED}
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()
if(VCPKG_TARGET_IS_WINDOWS)
    vcpkg_cmake_config_fixup(PACKAGE_NAME "SDL3_mixer" CONFIG_PATH "cmake")
else()
    vcpkg_cmake_config_fixup(PACKAGE_NAME "SDL3_mixer" CONFIG_PATH "lib/cmake/SDL3_mixer")
endif()
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
