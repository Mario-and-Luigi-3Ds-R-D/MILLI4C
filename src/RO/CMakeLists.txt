cmake_minimum_required(VERSION 3.24)
 
# Re-initialise the ARMCC compiler rules in this subdirectory context.
set(_ARMCC_CMAKE_LOADED FALSE)
include(${CMAKE_SOURCE_DIR}/project/ARMCC.cmake)
set(_ARMCC_CMAKE_LOADED TRUE)
__compiler_armcc(C)
__compiler_armcc(CXX)
__compiler_armcc(ASM)
 
# ---------------------------------------------------------------------------
# RO Module Build System
# Produces:
#   build/<ver>/src/ro/ModuleLib.a  – static lib linked into each CRO module
#   build/<ver>/src/ro/<n>.axf      – one per subdirectory of src/ro/
# ---------------------------------------------------------------------------
 
project(MILLI4C_RO C CXX ASM)
 
set(CMAKE_EXECUTABLE_SUFFIX ".axf")
 
# ---------------------------------------------------------------------------
# Compiler / linker flags
# ---------------------------------------------------------------------------
 
set(RO_COMPILE_FLAGS
    --arm
    --split_sections
    -c
    --cpu=MPCore
    --fpmode=fast
    --apcs=interwork/ropi/rwpi
    -O3
    -Otime
    --data_reorder
    --sys_include
    --signed_chars
    --dollar
    --no_vla
    --multibyte_chars
    --force_new_nothrow
    --no_rtti
    --no_exceptions
    --no_rtti_data
    --forceinline
    --no_vfe
    ${_OPT_DIAG}
    ${_OPT_TYPE}
    ${_OPT_LANG}
)
 
set(RO_C_FLAGS   --c99 ${RO_COMPILE_FLAGS})
set(RO_CXX_FLAGS --cpp ${RO_COMPILE_FLAGS})
set(RO_ASM_FLAGS --cpu=MPCore --apcs=interwork/ropi/rwpi)
 
set(RO_LINK_FLAGS
    --arm_only
    --cpu=MPCore
    --fpu=VFPv2
    --vfemode=force
    --no_remove
    --diag_suppress=L6314W,L6329W,L6914W
    --symbols
    --mangled
    ${_OPT_DIAG}
)
 
set(RO_INCLUDE_DIRS
    ${CMAKE_SOURCE_DIR}/include/game
    ${CMAKE_SOURCE_DIR}/library/CTRSDK-4_2_5/include
    ${CMAKE_SOURCE_DIR}/library/rsLib/include
)
 
# ---------------------------------------------------------------------------
# Helper: apply RO compile options to a target
# ---------------------------------------------------------------------------
 
function(ro_target_setup TARGET)
    target_compile_options(${TARGET} PRIVATE
        $<$<COMPILE_LANGUAGE:C>:${RO_C_FLAGS}>
        $<$<COMPILE_LANGUAGE:CXX>:${RO_CXX_FLAGS}>
        $<$<COMPILE_LANGUAGE:ASM>:${RO_ASM_FLAGS}>
    )
    target_include_directories(${TARGET} PRIVATE ${RO_INCLUDE_DIRS})
    target_compile_definitions(${TARGET} PRIVATE
        NN_PLATFORM_CTR
        RP_VERSION="${RP_VERSION}"
        $<$<NOT:$<BOOL:${ONLY_MATCHING}>>:NON_MATCHING>
    )
endfunction()
 
# ---------------------------------------------------------------------------
# Discover module directories
# ---------------------------------------------------------------------------
 
set(RO_SRC_ROOT ${CMAKE_SOURCE_DIR}/src/ro)
 
file(GLOB RO_MODULE_DIRS RELATIVE ${RO_SRC_ROOT} ${RO_SRC_ROOT}/*)
set(RO_CRO_MODULES "")
 
foreach(DIR ${RO_MODULE_DIRS})
    if(IS_DIRECTORY ${RO_SRC_ROOT}/${DIR})
        list(APPEND RO_CRO_MODULES ${DIR})
    endif()
endforeach()
 
# ---------------------------------------------------------------------------
# ModuleLib – static library linked into every CRO module
# ---------------------------------------------------------------------------
 
if(IS_DIRECTORY ${RO_SRC_ROOT}/ModuleLib)
    file(GLOB_RECURSE MODULELIB_SOURCES
        ${RO_SRC_ROOT}/ModuleLib/*.c
        ${RO_SRC_ROOT}/ModuleLib/*.cpp
        ${RO_SRC_ROOT}/ModuleLib/*.s
    )
 
    if(MODULELIB_SOURCES)
        add_library(ModuleLib STATIC ${MODULELIB_SOURCES})
        ro_target_setup(ModuleLib)
        message(STATUS "[RO] ModuleLib: ${MODULELIB_SOURCES}")
    else()
        message(WARNING "[RO] ModuleLib: directory exists but has no sources")
    endif()
 
    list(REMOVE_ITEM RO_CRO_MODULES ModuleLib)
endif()
 
# ---------------------------------------------------------------------------
# CRO modules
# ---------------------------------------------------------------------------
 
foreach(MODULE_NAME ${RO_CRO_MODULES})
    set(MODULE_DIR ${RO_SRC_ROOT}/${MODULE_NAME})
 
    file(GLOB_RECURSE MODULE_SOURCES
        ${MODULE_DIR}/*.c
        ${MODULE_DIR}/*.cpp
        ${MODULE_DIR}/*.s
    )
 
    if(NOT MODULE_SOURCES)
        message(WARNING "[RO] ${MODULE_NAME}: no source files found, skipping")
        continue()
    endif()
 
    # Per-module config
    set(MODULE_CONFIG ${CMAKE_SOURCE_DIR}/data/RO/${MODULE_NAME}/config.txt)
    set(SPLIT_RODATA FALSE)
    set(ENABLE_RTTI FALSE)
    if(EXISTS ${MODULE_CONFIG})
        file(STRINGS ${MODULE_CONFIG} CONFIG_LINES)
        foreach(LINE ${CONFIG_LINES})
            string(REGEX MATCH "split_rodata[ ]*=[ ]*(true|1|yes)" MATCH "${LINE}")
            if(MATCH)
                set(SPLIT_RODATA TRUE)
            endif()
            string(REGEX MATCH "has_rodata[ ]*=[ ]*(true|1|yes)" MATCH "${LINE}")
            if(MATCH)
                set(SPLIT_RODATA TRUE)
            endif()
            string(REGEX MATCH "enable_rtti[ ]*=[ ]*(true|1|yes)" MATCH_RTTI "${LINE}")
            if(MATCH_RTTI)
                set(ENABLE_RTTI TRUE)
            endif()
        endforeach()
    endif()
 
    # Generate scatter file
    set(SCATTER_FILE ${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME}.ld)
    file(TO_NATIVE_PATH "${SCATTER_FILE}" SCATTER_FILE_NATIVE)
    string(REPLACE "\\" "/" SCATTER_FILE_NATIVE "${SCATTER_FILE_NATIVE}")
 
    file(WRITE ${SCATTER_FILE}
"LOAD_REGION 0x00000000 0x01000000
{
    RO_REGION 0x00000000 PI
    {
        *(i.EntryTask)
        *(i.nnroControlObject_)
        *(+RO)
    }
    RW_REGION 0x00000000 PI
    {
        *(+RW)
    }
    ZI_REGION 0x00000000 PI
    {
        *(+ZI)
    }
}
")
 
    add_executable(${MODULE_NAME} ${MODULE_SOURCES})
    ro_target_setup(${MODULE_NAME})
 
    if(ENABLE_RTTI)
        target_compile_options(${MODULE_NAME} PRIVATE
            $<$<COMPILE_LANGUAGE:CXX>:--rtti --rtti_data>
        )
    endif()
 
    target_link_options(${MODULE_NAME} PRIVATE
        ${RO_LINK_FLAGS}
        "--scatter=${SCATTER_FILE_NATIVE}"
        "--list=${CMAKE_CURRENT_BINARY_DIR}/${MODULE_NAME}.map"
        --xref
    )
 
    if(TARGET ModuleLib)
        target_link_libraries(${MODULE_NAME} PRIVATE ModuleLib)
    endif()
 
    if(TARGET CTRSDK)
        target_link_libraries(${MODULE_NAME} PRIVATE CTRSDK)
    endif()
 
    message(STATUS "[RO] CRO module: ${MODULE_NAME}")
endforeach()