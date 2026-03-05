#pragma once

#include <cstddef>
#include <cstdint>

#include <limits>

#define NULL 0

typedef signed char        s8;
typedef signed short       s16;
typedef signed int         s32;
typedef signed long long   s64;
typedef unsigned char      u8;
typedef unsigned short     u16;
typedef unsigned int       u32;
typedef unsigned long long u64;
typedef std::uint32_t uint;
typedef float f32;
typedef double f64;
typedef unsigned short ushort;
typedef unsigned char uchar;
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

#define split(S) __attribute__((section("i." #S))) S
