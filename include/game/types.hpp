#pragma once

#include <cstddef>
#include <cstdint>
#include <stdlib.h>
#include <limits>
#include <new>

#define NULL 0

typedef unsigned char      u8;
typedef unsigned short     u16;
typedef unsigned int       u32;
typedef unsigned long long u64;

typedef unsigned short     ushort;
typedef unsigned int       uint;

typedef signed char        byte;
typedef unsigned char      ubyte;

typedef unsigned char      uchar;

typedef signed char        s8;
typedef signed short       s16;
typedef signed int         s32;
typedef signed long long   s64;

typedef u32                uptr;
typedef s32                ptr;

typedef float              f32;
typedef double             f64;

typedef volatile u8       vu8;
typedef volatile u16      vu16;
typedef volatile u32      vu32;
typedef volatile u64      vu64;

typedef volatile s8       vs8;
typedef volatile s16      vs16;
typedef volatile s32      vs32;
typedef volatile s64      vs64;

typedef volatile f32      vf32;
typedef volatile f64      vf64;

typedef unsigned char           bit8;
typedef unsigned short          bit16;
typedef unsigned int            bit32;
typedef unsigned long long int  bit64; 

typedef s32                sptr;
typedef u32                uptr;

//unknown
typedef u8 Unknown_x1;
typedef short Unknown_x2;
typedef int Unknown_x4;
//arm shit
#ifdef __cplusplus

#ifndef nullptr
#define nullptr NULL
#endif

typedef u32 uintptr_t;
typedef s32 intptr_t;

#endif

#define splits(S) __attribute__((section("i." #S))) S

#define NONMATCHING

/* Global operators so ARMCC doesnt cry. */

class MemAlcBase;

void* operator new(unsigned int size, MemAlcBase* heap, const char* tag,unsigned int flags);
void* operator new[](uint size, MemAlcBase* heap, const char* tag,uint flags);

/* Games are built under O0 unoptimized flags if it is a debug build, as seen in boomerrang-3ds_Debug_2477_rev7774.axf by 1stPlayableStudios. For debug, add "-DBUILD_DEBUG" to target_compile_options replacing "DBUILD_RELEASE" in the CMakeLists */

/* Pair this with the SDKS "NN_DEBUG" flag as well. */

#ifdef BUILD_DEBUG
    #pragma O0
#endif