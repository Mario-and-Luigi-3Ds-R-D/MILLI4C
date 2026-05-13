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
    void Initialize(MemAlc*, size_t);
    void mergeVram(size_t);
    void restoreDefVramAlc(size_t);
    void simpleSwapBufVSync(u32);
    void splitVram(size_t);
    void swapDispBuf(size_t);
    void term();
    void waitVSync(size_t);
    uint getVram(uint sp, Grp grpPtr, uint sizeHi, uint sizeLo);

    VramAlcRange vramRanges[2];
};

extern Grp gGrp;