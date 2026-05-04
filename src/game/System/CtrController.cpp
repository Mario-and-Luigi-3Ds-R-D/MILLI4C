#include <System/CtrController.hpp>

CtrBtn gBtn;
CtrAcl gAcl;
CtrTp gTp;

u32 TransCrossBtnBit(u32 btnBit) {
    uint crossed = btnBit >> 0x18 & 0xf0;
    if(crossed != 0){
        btnBit = btnBit & 0xffffff0f | crossed;
    }
    return btnBit;
}

#ifdef BTN
#endif

s32 Btn::Select(s32 param_1, s32 current, u32 oldInput, u32 newInput, s32 status){
    s32 isTarg;
    s32 var_r4 = param_1;
    s32 currentBtn = current;

    if(Btn::Rep(oldInput, status) != 0){
        var_r4 -= 1;
    }
    if(Btn::Rep(newInput, status) != 0){
        var_r4 += 1;
    }
    if(var_r4 < 0){
        isTarg = Btn::Trg(oldInput, status);
        if(isTarg != 0){
            goto targRet;
        }
        return isTarg;
    }
    if(currentBtn > var_r4){
        return var_r4;
    }
    if(Btn::Trg(newInput, status) != 0){
        return 0;
    }
targRet:
    isTarg = currentBtn -1;
    return isTarg;
}

__attribute__((noinline)) s32 Btn::Trg(u32 input, s32 status){
    s32 newTarg;

    newTarg = input & (int)gBtn.mJustPressedInput;
    if (newTarg != 0) {
        newTarg = 1;
    }
    return newTarg;
}

__attribute__((noinline)) s32 Btn::Rep(u32 input, s32 status){
    s32 repeatedInput;

    repeatedInput = input & (int)gBtn.mRepeatedInput;
    if(repeatedInput != 0){
        repeatedInput = 1;
    }
    return repeatedInput;
}

__attribute__((noinline)) s32 Btn::Cnt(u32 currentInput, s32 status){
    s32 currentInp;

    currentInp = currentInput & (int)gBtn.mCurrentInput;
    if(currentInp != 0){
        currentInp = 1;
    }
    return currentInp;
}

#ifdef CTRBTN
#endif

void* CtrBtn::get(int current) const{
    return (&this->mCurrentInput)[current];
}

