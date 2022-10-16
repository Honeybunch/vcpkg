vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-ValidationLayers
    REF 23540f64426726a78e16c9c036c08b1b6c994024
    SHA512 c169835a521714ae2dea1992fc2418e5c7d09b2558e33e6be4fa13e6562720ddb6cd1df1df72b9a2bc81fcddb21f1994d0d82f012ad56dda42967092ea00cb47
    PATCHES
        vulkan-include.patch
)

vcpkg_check_features(OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        robin-hood-hashing         USE_ROBIN_HOOD_HASHING
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
      -DBUILD_TESTS=OFF
      ${FEATURE_OPTIONS}
)

vcpkg_cmake_install()

vcpkg_copy_pdbs()

# Move libraries to bin directory
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/bin/")
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/debug/bin/")
file(RENAME
    "${CURRENT_PACKAGES_DIR}/lib/VkLayer_khronos_validation.dll"
    "${CURRENT_PACKAGES_DIR}/bin/VkLayer_khronos_validation.dll"
)
file(RENAME
    "${CURRENT_PACKAGES_DIR}/debug/lib/VkLayer_khronos_validation.dll"
    "${CURRENT_PACKAGES_DIR}/debug/bin/VkLayer_khronos_validation.dll"
)
# This port has no includes
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/include/")
file(TOUCH "${CURRENT_PACKAGES_DIR}/include/dummy.h")

file(INSTALL "${SOURCE_PATH}/LICENSE.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
