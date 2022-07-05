# volk is not prepared to be a DLL.
vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO zeux/volk
    REF sdk-1.3.216
    SHA512 78f808ae08f069bc0507c2419913410c9ba3c41b9dbc02d2eeb591ba91c966a268a85fa9d52121ecab4597a15ba461e18f10b34ebaa320b2749734f08cfa1e8c
    HEAD_REF master
    PATCHES
        001-vcpkg-vulkan-headers.patch
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DVOLK_INSTALL=ON
)
vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/volk)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${SOURCE_PATH}/LICENSE.md" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
