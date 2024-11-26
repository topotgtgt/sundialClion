cmake_minimum_required(VERSION 3.22.0)

if (UNIX AND NOT APPLE)
    set(LINUX TRUE)
endif ()

if (OFFICE STREQUAL "Web" AND NOT AUTH_TOKEN)
    MESSAGE(FATAL_ERROR "Office var set to Web but no access token supplied! Please check Readme for instructions.")
endif ()

if (OFFICE STREQUAL "Karlsruhe")
    set(CACHE_ADDRESS "http://192.168.178.85")
    set(AUTH_BEARER "")
    set(ENV{SCCACHE_WEBDAV_TOKEN} "")
elseif (OFFICE STREQUAL "Suzhou")
    set(AUTH_BEARER "")
    set(CACHE_ADDRESS "http://192.168.1.201")
elseif (OFFICE STREQUAL "Web")
    set(AUTH_BEARER ",Authorization: Bearer ${AUTH_TOKEN}")
    set(ENV{SCCACHE_WEBDAV_TOKEN} ${AUTH_TOKEN})
    set(CACHE_ADDRESS "https://files.pkg.jetbrains.space/shoncloud/p/tools/cache")
endif ()

if (OFFICE)
    MESSAGE("Office ${OFFICE}")
    MESSAGE("Remote Caching enabled. Address: ${CACHE_ADDRESS}")
    set(ENV{VCPKG_BINARY_SOURCES} "clear;default,readwrite;http,${CACHE_ADDRESS}/vcpkg/{name}/{version}/{triplet}/{sha},readwrite${AUTH_BEARER}")
    set(ENV{SCCACHE_WEBDAV_ENDPOINT} "${CACHE_ADDRESS}/sccache")
endif ()

if (LINUX)
    set(VCPKG_TARGET_TRIPLET x64-linux-mixed)
endif ()

project(cv_heat2D LANGUAGES CXX C)


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_INSTALL_MESSAGE LAZY)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DJSON_DIAGNOSTICS=1")

# set march on linux
if (LINUX)
    if (DEFINED ENV{MARCH})
        message("MARCH is set")
        set(MARCH_SETTING $ENV{MARCH})
    else ()
        message("MARCH is not set. Using default value")
        set(MARCH_SETTING "x86-64")
    endif ()

    message("MARCH setting for compilation:  ${MARCH_SETTING}")

    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=${MARCH_SETTING}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=${MARCH_SETTING}")
endif ()

find_package(Boost 1.64 REQUIRED COMPONENTS filesystem regex)
find_package(MPI REQUIRED)
find_package(HDF5 REQUIRED COMPONENTS C HL)
find_package(LAPACK REQUIRED)

file(GLOB_RECURSE "${PROJECT_SOURCE_DIR}/*.cpp"
)

file(GLOB CVODE_SRCS "${PROJECT_SOURCE_DIR}/src/cvode/*.c")
file(GLOB NVECTOR_SERIAL_SRCS "${PROJECT_SOURCE_DIR}/src/nvector/serial/*.c")
file(GLOB SUNDIALS_SRCS "${PROJECT_SOURCE_DIR}/src/sundials/*.c")

add_executable(cv_heat2D
        application/cv_heat2D.cpp
        ${CVODE_SRCS}
        ${NVECTOR_SERIAL_SRCS}
        ${SUNDIALS_SRCS}
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/band/sunlinsol_band.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/dense/sunlinsol_dense.c
        #        ${PROJECT_SOURCE_DIR}/src/sunlinsol/klu/sunlinsol_klu.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/lapackband/sunlinsol_lapackband.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/lapackdense/sunlinsol_lapackdense.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/pcg/sunlinsol_pcg.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/spbcgs/sunlinsol_spbcgs.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/spgmr/sunlinsol_spgmr.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/spfgmr/sunlinsol_spfgmr.c
        ${PROJECT_SOURCE_DIR}/src/sunlinsol/sptfqmr/sunlinsol_sptfqmr.c
        #        ${PROJECT_SOURCE_DIR}/src/sunlinsol/superludist/sunlinsol_superludist.c
        #        ${PROJECT_SOURCE_DIR}/src/sunlinsol/superlumt/sunlinsol_superlumt.c
        ${PROJECT_SOURCE_DIR}/src/sunmatrix/band/sunmatrix_band.c
        ${PROJECT_SOURCE_DIR}/src/sunmatrix/dense/sunmatrix_dense.c
        #        ${PROJECT_SOURCE_DIR}/src/sunmatrix/slunrloc/sunmatrix_slunrloc.c
        ${PROJECT_SOURCE_DIR}/src/sunmatrix/sparse/sunmatrix_sparse.c
        ${PROJECT_SOURCE_DIR}/src/sunnonlinsol/fixedpoint/sunnonlinsol_fixedpoint.c
        ${PROJECT_SOURCE_DIR}/src/sunnonlinsol/newton/sunnonlinsol_newton.c
        #${PROJECT_SOURCE_DIR}/src/sunnonlinsol/petscsnes/sunnonlinsol_petscsnes.c
)

target_include_directories(cv_heat2D
        PRIVATE
        ${PROJECT_SOURCE_DIR}/include
        ${PROJECT_SOURCE_DIR}/include/arkode
        ${PROJECT_SOURCE_DIR}/include/cvode
        ${PROJECT_SOURCE_DIR}/include/cvodes
        ${PROJECT_SOURCE_DIR}/include/ida
        ${PROJECT_SOURCE_DIR}/include/idas
        ${PROJECT_SOURCE_DIR}/include/kinsol
        ${PROJECT_SOURCE_DIR}/include/nvector
        ${PROJECT_SOURCE_DIR}/include/sunadaptcontroller
        ${PROJECT_SOURCE_DIR}/include/sundials
        ${PROJECT_SOURCE_DIR}/include/sunlinsol
        ${PROJECT_SOURCE_DIR}/include/sunmatrix
        ${PROJECT_SOURCE_DIR}/include/sunmemory
        ${PROJECT_SOURCE_DIR}/include/sunnonlinsol
        ${PROJECT_SOURCE_DIR}/src/arkode
        ${PROJECT_SOURCE_DIR}/src/cvode
        ${PROJECT_SOURCE_DIR}/src/cvodes
        ${PROJECT_SOURCE_DIR}/src/ida
        ${PROJECT_SOURCE_DIR}/src/idas
        ${PROJECT_SOURCE_DIR}/src/kinsol
        ${PROJECT_SOURCE_DIR}/src/nvector
        ${PROJECT_SOURCE_DIR}/src/sunadaptcontroller
        ${PROJECT_SOURCE_DIR}/src/sundials
        ${PROJECT_SOURCE_DIR}/src/sunlinsol
        ${PROJECT_SOURCE_DIR}/src/sunmatrix
        ${PROJECT_SOURCE_DIR}/src/sunmemory
        ${PROJECT_SOURCE_DIR}/src/sunnonlinsol
        ${YAML_CPP_INCLUDE_DIR}
)


target_link_libraries(cv_heat2D
        PRIVATE
        ${LAPACK_LIBRARIES}
)