#module restore
#module load oneapi/eng-compiler/2022.12.30.005
#module load intel_compute_runtime/release/agama-devel-627
#module load spack cmake
#module list

SET (SUNSPOT_MACHINE TRUE CACHE BOOL "")

SET (HOMMEXX_MPI_ON_DEVICE TRUE CACHE BOOL "")

#SET(BUILD_HOMME_WITHOUT_PIOLIBRARY TRUE CACHE BOOL "")

SET(HOMME_FIND_BLASLAPACK TRUE CACHE BOOL "")

SET(WITH_PNETCDF FALSE CACHE FILEPATH "")

SET(USE_QUEUING FALSE CACHE BOOL "")

#temp hack
SET(HOMME_USE_KOKKOS TRUE CACHE BOOL "")

SET(BUILD_HOMME_PREQX_KOKKOS TRUE CACHE BOOL "")
SET(BUILD_HOMME_THETA_KOKKOS TRUE CACHE BOOL "")

#set(KOKKOS_HOME "/home/onguba/kokkos-build/june22-2024-aot/install" CACHE STRING "")
#set(E3SM_KOKKOS_PATH ${KOKKOS_HOME} CACHE STRING "")

SET (NetCDF_Fortran_PATH "/lus/gila/projects/CSC249ADSE15_CNDA/software/oneAPI.2022.12.30.003/netcdf" CACHE STRING "")
SET (NetCDF_C_PATH "/lus/gila/projects/CSC249ADSE15_CNDA/software/oneAPI.2022.12.30.003/netcdf" CACHE STRING "")

SET(USE_TRILINOS OFF CACHE BOOL "")

SET(HOMME_ENABLE_COMPOSE FALSE CACHE BOOL "")

#SET(CMAKE_CXX_STANDARD 17)
SET(CMAKE_CXX_STANDARD 17 CACHE STRING "CXX Standard")

SET(CMAKE_C_COMPILER "mpicc" CACHE STRING "")
SET(CMAKE_Fortran_COMPILER "mpifort" CACHE STRING "")
SET(CMAKE_CXX_COMPILER "mpicxx" CACHE STRING "")

SET(SYCL_COMPILE_FLAGS "-std=c++17 -fsycl -fsycl-device-code-split=per_kernel -fno-sycl-id-queries-fit-in-int -fsycl-unnamed-lambda")
SET(SYCL_LINK_FLAGS "-fsycl-max-parallel-link-jobs=32 -fsycl-link-huge-device-code -fsycl -fsycl-device-code-split=per_kernel -fsycl-targets=spir64_gen -Xsycl-target-backend \"-device 12.60.7\"")

#-fpscomp does not actually solve the issue with bools in here,another suggestion was -fp-model=precise, not working either
SET(ADD_Fortran_FLAGS " -fc=ifx -fpscomp logicals -O3 -DNDEBUG -DCPRINTEL -g" CACHE STRING "")
SET(ADD_C_FLAGS "-O3 -DNDEBUG " CACHE STRING "") 

SET(ADD_CXX_FLAGS " -std=c++17 -O3 -DNDEBUG ${SYCL_COMPILE_FLAGS}" CACHE STRING "")
SET(ADD_LINKER_FLAGS "-O3 -DNDEBUG ${SYCL_LINK_FLAGS} -fortlib" CACHE STRING "")

set (ENABLE_OPENMP OFF CACHE BOOL "")
set (ENABLE_COLUMN_OPENMP OFF CACHE BOOL "")
set (ENABLE_HORIZ_OPENMP OFF CACHE BOOL "")

set (HOMME_TESTING_PROFILE "dev" CACHE STRING "")

set (USE_NUM_PROCS 4 CACHE STRING "")

SET (USE_MPI_OPTIONS "--bind-to core" CACHE FILEPATH "")


