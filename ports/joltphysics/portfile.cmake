vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jrouwe/JoltPhysics
    REF 515933138c6b16d661452fb907a8a9bbb71cb848
    SHA512 7e0c8dbae30b1fa2989250fd09f062517bd15ec7768565fda6d8fd5f8c25e9c0476f09fd99acd3e26b0bd54cf1ba0a51ed14d0fafeb18f2aa8dc687c9e804755
    HEAD_REF master
    PATCHES
      fix-export.diff
)

# Need to provide this library a config
# The fix-export.diff should install this
file(COPY "${CMAKE_CURRENT_LIST_DIR}/unofficial-joltphysics-config.cmake" DESTINATION "${SOURCE_PATH}/Build")

string(COMPARE EQUAL "${VCPKG_CRT_LINKAGE}" "static" USE_STATIC_CRT)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/Build"
    OPTIONS
        -DTARGET_UNIT_TESTS=OFF
        -DTARGET_HELLO_WORLD=OFF
        -DTARGET_PERFORMANCE_TEST=OFF
        -DTARGET_SAMPLES=OFF
        -DTARGET_VIEWER=OFF
        -DCROSS_PLATFORM_DETERMINISTIC=OFF
        -DINTERPROCEDURAL_OPTIMIZATION=OFF
        -DUSE_STATIC_MSVC_RUNTIME_LIBRARY=${USE_STATIC_CRT}
        -DENABLE_ALL_WARNINGS=OFF
    OPTIONS_RELEASE
        -DGENERATE_DEBUG_SYMBOLS=OFF
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
vcpkg_cmake_config_fixup(CONFIG_PATH share/unofficial-${PORT} PACKAGE_NAME unofficial-${PORT})
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
