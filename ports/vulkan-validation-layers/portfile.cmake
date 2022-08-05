vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO KhronosGroup/Vulkan-ValidationLayers
    REF 26dc8574c8ceafc901e1bbd7a0929da7e0a5df20
    SHA512 825b4aacb14403c36ed4b000cf6c08355520f20d208251960a25e829017c826834ddd9405eea2e07c93987dacadf9d4ab84245a6a34fd9a2999d1e636726b27d
    HEAD_REF sdk-1.3.204.1
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