ExternalProject_Add(Cura
    GIT_REPOSITORY https://github.com/ultimaker/Cura
    GIT_TAG origin/${TAG_OR_BRANCH}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DURANIUM_SCRIPTS_DIR= -DCURA_VERSION=${CURA_VERSION}
)

SetProjectDependencies(TARGET Cura DEPENDS Uranium CuraEngine)
