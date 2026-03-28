cmake_minimum_required(VERSION 3.24)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/project/ARMCC.cmake)
include(${CMAKE_SOURCE_DIR}/project/global.cmake)
set_toolchain()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#add_subdirectory(src/ro)
add_subdirectory(library/LMS)
add_subdirectory(library/CTRSDK-4_2_5)
#add_subdirectory(library/NintendoWare)

project(MILLI4C C CXX ASM)


set(CMAKE_EXECUTABLE_SUFFIX ".axf")

__compiler_armcc(C)
__compiler_armcc(CXX)
__compiler_armcc(ASM)

file(GLOB_RECURSE SOURCES_GAME ${CMAKE_SOURCE_DIR}/src/game/*.c ${CMAKE_SOURCE_DIR}/src/game/*.cpp)
file(GLOB_RECURSE SOURCES_RSLIB ${CMAKE_SOURCE_DIR}/library/rsLib/src/*.c ${CMAKE_SOURCE_DIR}/library/rsLib/src/*.cpp) 
file(GLOB_RECURSE SOURCES_ADSL ${CMAKE_SOURCE_DIR}/library/adsl/src/*.c ${CMAKE_SOURCE_DIR}/library/adsl/src/*.cpp)

add_library(crt0 OBJECT library/CTRSDK-4_2_5/src/nn/crt0/MPCore/crt0.cpp)
add_executable(MILLI4C ${SOURCES_GAME} ${SOURCES_RSLIB} ${SOURCES_ADSL} $<TARGET_OBJECTS:crt0>)

target_link_options(MILLI4C PRIVATE
    --entry=__ctr_start --startup=__ctr_start
    --library_type=standardlib --no_remove --datacompressor=off
    --legacyalign --tailreorder --inline
    --verbose --symbols --paged --mangled
    --scatter=${CMAKE_CURRENT_BINARY_DIR}/linker.ld
    )

target_link_libraries(MILLI4C PUBLIC CTRSDK)
target_link_libraries(MILLI4C PUBLIC LibMessageStudio)
#target_link_libraries(MILLI4C PUBLIC NintendoWare)

target_include_directories(MILLI4C PUBLIC ${CMAKE_SOURCE_DIR}/include/game)
target_include_directories(MILLI4C PUBLIC library/rsLib/include)
target_include_directories(MILLI4C PUBLIC library/LMS/include/LMS)
target_include_directories(crt0 PRIVATE ${CMAKE_SOURCE_DIR}/library/CTRSDK-4_2_5/include)
target_include_directories(crt0 PRIVATE ${CMAKE_SOURCE_DIR}/include/game)

add_subdirectory(src/ro)