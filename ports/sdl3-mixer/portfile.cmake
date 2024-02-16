vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO libsdl-org/SDL_mixer
    REF "087004f32e69c34a72f264dc36b057fd76f908b9"
    HEAD_REF main
    SHA512 e4c9a4418725ce019bb62216c8fd484cf04b34e2099af633d4c84e0e558fe6ba1921e791c5dde319266ffe3a1237f887871c819a249a8df7e9440c36fce181da
    PATCHES 
        fix-pkg-prefix.patch
)

vcpkg_check_features(
    OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        fluidsynth SDL3MIXER_MIDI
        fluidsynth SDL3MIXER_MIDI_FLUIDSYNTH
        libflac SDL3MIXER_FLAC
        libflac SDL3MIXER_FLAC_LIBFLAC
        libmodplug SDL3MIXER_MOD
        libmodplug SDL3MIXER_MOD_MODPLUG
        mpg123 SDL3MIXER_MP3
        mpg123 SDL3MIXER_MP3_MPG123
        opusfile SDL3MIXER_OPUS
    MAYBE_UNUSED_VARIABLES    
        SDL3MIXER_MP3_DRMP3
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
        -DSDL3MIXER_VENDORED=OFF
        -DSDL3MIXER_SAMPLES=OFF
        -DSDL3MIXER_DEPS_SHARED=OFF
        -DSDL3MIXER_OPUS_SHARED=OFF
        -DSDL3MIXER_VORBIS_VORBISFILE_SHARED=OFF
        -DSDL3MIXER_VORBIS="VORBISFILE"
        -DSDL3MIXER_FLAC_DRFLAC=OFF
        -DSDL3MIXER_MIDI_NATIVE=OFF
        -DSDL3MIXER_MIDI_TIMIDITY=OFF
        -DSDL3MIXER_MP3_DRMP3=OFF
        -DSDL3MIXER_MOD_XMP_SHARED=${BUILD_SHARED}
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_cmake_config_fixup(
    PACKAGE_NAME "SDL3_mixer"
    CONFIG_PATH "lib/cmake/SDL3_mixer"
)
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
