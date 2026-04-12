# PROJECT MILLI4C
#
# MILLION 4 CTR

cmake_minimum_required(VERSION 3.24)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/project/ARMCC.cmake)
include(${CMAKE_SOURCE_DIR}/project/global.cmake)
set_toolchain()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#add_subdirectory(library/NintendoWare)

project(MILLI4C C CXX ASM)

set(CMAKE_EXECUTABLE_SUFFIX ".axf")
set(CMAKE_CXX_USE_RESPONSE_FILE_FOR_LIBRARIES TRUE)
set(CMAKE_C_USE_RESPONSE_FILE_FOR_LIBRARIES TRUE)

__compiler_armcc(C)
__compiler_armcc(CXX)
__compiler_armcc(ASM)

# Dwarf info :D

set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   --dwarf2 --debug")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --dwarf2 --debug")

file(GLOB_RECURSE SOURCES_GAME ${CMAKE_SOURCE_DIR}/src/game/*.c ${CMAKE_SOURCE_DIR}/src/game/*.cpp)
file(GLOB_RECURSE SOURCES_RSLIB ${CMAKE_SOURCE_DIR}/library/rsLib/src/*.c ${CMAKE_SOURCE_DIR}/library/rsLib/src/*.cpp) 
file(GLOB_RECURSE SOURCES_ADSL ${CMAKE_SOURCE_DIR}/library/adsl/src/*.c ${CMAKE_SOURCE_DIR}/library/adsl/src/*.cpp)


add_library(crt0 OBJECT library/CTRSDK-4_2_5/src/nn/crt0/MPCore/crt0.cpp)
add_subdirectory(library/LMS)
add_subdirectory(library/CTRSDK-4_2_5)
add_subdirectory(library/NintendoWare)
add_executable(MILLI4C ${SOURCES_GAME} ${SOURCES_RSLIB} ${SOURCES_ADSL} $<TARGET_OBJECTS:crt0>)

# Targets

target_link_options(MILLI4C PRIVATE
    --entry=__ctr_start --startup=__ctr_start
    --library_type=standardlib --ref_cpp_init --scanlib --no_remove --datacompressor=off
    --legacyalign --tailreorder --inline --map --symdefs=${CMAKE_CURRENT_BINARY_DIR}/MILLI4C.map
    --verbose --symbols --paged --mangled
    --scatter=${CMAKE_CURRENT_BINARY_DIR}/linker.ld
    --libpath=${ARMCC41LIB}
    )

target_compile_options(MILLI4C PUBLIC $<$<COMPILE_LANGUAGE:CXX>:
    --apcs=//interwork --cpu=MPCore --fpmode=fast --cpp --arm --force_new_nothrow
    --signed_chars --multibyte-chars --no_vfe 
    --diag_suppress=1 --diag_suppress=177 --diag_suppress=541 --diag_suppress=1134 --diag_suppress=3017
    --rtti --rtti_data --no_exceptions -O3 -Otime --data-reorder --split_sections
    >)

target_compile_options(MILLI4C PUBLIC $<$<COMPILE_LANGUAGE:C>:
    --apcs=//interwork --cpu=MPCore --fpmode=fast --c99 --arm
    --signed_chars --multibyte-chars 
    --diag_suppress=1 --diag_suppress=177 --diag_suppress=541 --diag_suppress=1134 --diag_suppress=3017
    -Otime --data-reorder --split_sections
    >)

target_link_libraries(MILLI4C PUBLIC CTRSDK)
target_link_libraries(MILLI4C PUBLIC LibMessageStudio)
target_link_libraries(MILLI4C PUBLIC NintendoWare)

target_include_directories(MILLI4C PUBLIC ${CMAKE_SOURCE_DIR}/include/game)
target_include_directories(MILLI4C PUBLIC ${CMAKE_SOURCE_DIR}/library/rsLib/include)
target_include_directories(MILLI4C PUBLIC ${CMAKE_SOURCE_DIR}/library/LMS/include/LMS)
target_include_directories(MILLI4C PUBLIC ${CMAKE_SOURCE_DIR}/library/NintendoWare/include)

target_include_directories(crt0 PRIVATE ${CMAKE_SOURCE_DIR}/library/CTRSDK-4_2_5/include)
target_include_directories(crt0 PRIVATE ${CMAKE_SOURCE_DIR}/include/game)

# Build CRO

target_compile_definitions(MILLI4C PUBLIC NON_MATCHING=)

add_subdirectory(src/RO)