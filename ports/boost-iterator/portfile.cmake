# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/iterator
    REF boost-${VERSION}
    SHA512 1e6adfd1cc1236ccbdb91ec94f041720b5acd867a475f7091e3007adbacdd44c0a154d2044bfa319f4d0f945a268d16dac37d26e3dc478ee576cec3ce1ce868b
    HEAD_REF master
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
