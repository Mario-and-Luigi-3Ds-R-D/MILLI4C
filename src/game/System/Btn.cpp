#include <System/Btn.hpp>
#include <System/CtrController.hpp>

u32 TransCrossBtnBit(u32 btnBit) {
    uint crossed = btnBit >> 0x18 & 0xf0;
    if(crossed != 0){
        btnBit = btnBit & 0xffffff0f | crossed;
    }
    return btnBit;
}

s32 Btn::Trg(u32 input, s32 status){
    s32 newTarg;

    newTarg = input & (int)gBtn.mJustPressedInput;
    if (newTarg != 0) {
        newTarg = 1;
    }
    return newTarg;
}

s32 Btn::Rep(u32 input, s32 status){
    int repeatedInput;

    repeatedInput = input & (int)gBtn.mRepeatedInput;
    if(repeatedInput != 0){
        repeatedInput = 1;
    }
    return repeatedInput;
}

s32 Btn::Cnt(u32 currentInput, s32 status){
    s32 currentInp;

    currentInp = currentInput & (int)gBtn.mCurrentInput;
    if(currentInp != 0){
        currentInp = 1;
    }
    return currentInp;
}