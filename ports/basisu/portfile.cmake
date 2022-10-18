vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Honeybunch/basis_universal
    REF 22dd77180c0568e1c5e1b11b21fe296e5c0c2696
    SHA512 d05a20c7baedbf5e6430ff148d5340dbf01385bbfc28d14e17fe0023bb04b407df16ee0c2ac4c96252e5d3094c7befa1a5673d332353fd21e63fcec186dc50e6
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
)

vcpkg_cmake_install()

vcpkg_copy_tools(TOOL_NAMES "basisu" AUTO_CLEAN)

# Remove unnecessary files
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
