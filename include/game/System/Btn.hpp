#include "types.hpp"

struct Btn{
    static s32 Rep(u32,s32);
    static s32 Trg(u32,s32);
    static s32 Cnt(u32,s32);
    static s32 Select(s32 param_1, s32 current, u32 oldInput, u32 newInput, s32 status);
};
/* Btn::Select */

/* Nothing calls this, except for the CROs so, it goes here. Also due to avoiding attribute noinline */

s32 Btn::Select(s32 param_1, s32 current, u32 oldInput, u32 newInput, s32 status){
    s32 var_r4 = param_1;
    s32 currentBtn = current;
    param_1 = var_r4;

    if (Btn::Rep(oldInput, status) != 0)
        var_r4 -= 1;

    if (Btn::Rep(newInput, status) != 0)
        var_r4 += 1;

    if (var_r4 < 0) {
        if (Btn::Trg(oldInput, status) != 0)
            return currentBtn - 1;
        return 0;
    }

    if (currentBtn > var_r4)
        return var_r4;

    if (Btn::Trg(newInput, status) != 0)
        return 0;

    return currentBtn -1;
}