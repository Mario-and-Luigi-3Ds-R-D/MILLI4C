#pragma once

#include <cstddef>
#include <cstdint>
#include <stdlib.h>
#include <limits>
#include <new>

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
typedef char byte;
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

// Global Operators

class MemAlcBase;

void* operator new(unsigned int size, MemAlcBase* heap, const char* tag, unsigned int flags) throw();
void* operator new[](unsigned int size, MemAlcBase* heap, const char* tag, unsigned int flags) throw();