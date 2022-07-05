vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO microsoft/DirectXShaderCompiler
    REF 6f204c72473c73953b7968a45f6957b593fedac6
    SHA512 f842b31840573e36e7a8d29bee12b6131a94bb83459cb4985ec2e7ecc17467aef1d082cecead3f3c6aa3d4511b54ac2fd5a819d0616a9b5ed257321dd23a703a
    HEAD_REF release-1.6.2112
    PATCHES
        001-vcpkg-spirv.patch
)

set(VCPKG_BUILD_TYPE release)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
      -C ${SOURCE_PATH}/cmake/caches/PredefinedParams.cmake
      -DDXC_BUILD_ARCH=${VCPKG_TARGET_ARCHITECTURE}
      -DSPIRV_BUILD_TESTS=OFF
      -DHLSL_INCLUDE_TESTS=OFF
      -DLLVM_INSTALL_TOOLCHAIN_ONLY=ON
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()

vcpkg_copy_tools(
    TOOL_NAMES
        dxa
        dxc
        dxl
        dxopt
        dxr
        dxv
    AUTO_CLEAN
)
vcpkg_copy_tool_dependencies(${CURRENT_PACKAGES_DIR}/tools/${PORT})

file(INSTALL ${SOURCE_PATH}/LICENSE.TXT DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/lib")

file(COPY ${CMAKE_CURRENT_LIST_DIR}/usage DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT})
