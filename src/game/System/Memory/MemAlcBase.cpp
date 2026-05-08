#include <System/Memory/MemAlcBase.hpp>

int MemAlcBase::GetOpt(int flag, bool isNewOp, uint alignment) {
    int result;

    if (flag <= 4)
        result = 0;
    else
        result = flag - 1;

    if (isNewOp != 0)
        result |= 0x800000;

    return result | alignment;
}