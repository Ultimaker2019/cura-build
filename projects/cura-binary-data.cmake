ExternalProject_Add(cura-binary-data
    GIT_REPOSITORY https://github.com/ultimaker2019/cura-binary-data
    GIT_TAG ${CURA_BRANCH_OR_TAG}
#    GIT_SHALLOW 1
    STEP_TARGETS update
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX}
)

SetProjectDependencies(TARGET cura-binary-data DEPENDS Cura)

add_dependencies(update cura-binary-data-update)
