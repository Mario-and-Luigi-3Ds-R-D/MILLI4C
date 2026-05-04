#include "types.hpp"
#include "System/Memory/VramAlcRange.hpp"
#include "System/Memory/MemAlc.hpp"
#include "nn/math/math_Matrix44.h"

class Grp{
public:
    void* begin(u32, u32);
    void* end(uchar); // void* undefined return type
    static u32 GetLcdAsp(u32);
    static u32 GetLcdHeight(u32);
    static u32 GetLcdWidth(u32);
    float* GetProjOrtho(nn::math::MTX44*, u32, bool, bool, float, float);
    void Initialize(MemAlc*, u32);
    void mergeVram(u32);
    void restoreDefVramAlc(u32);
    void simpleSwapBufVSync(u32);
    void splitVram(u32);
    void swapDispBuf(u32);
    void term();
    void waitVSync(u32);

    VramAlcRange vramRanges[2];  // or VramAlcRange vramRanges[N]

// statics
public:

};