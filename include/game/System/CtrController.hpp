#pragma once

#include "types.hpp"
#include "nn/hid/CTR/hid_TouchPanel.h"
#include "nn/hid/CTR/hid_Accelerometer.h"
#include "nn/hid/CTR/hid_Pad.h"
#include "nn/hid/CTR/hid_Gyroscope.h"

extern nn::hid::CTR::TouchPanelReader gTouchPanelReader;
extern nn::hid::CTR::AccelerometerReader gAccelerometerReader;
extern nn::hid::CTR::PadReader gPadReader;
extern nn::hid::CTR::GyroscopeReader gGyr;

using namespace nn::hid::CTR;

extern "C" u32 TransCrossBtnBit(u32); // heya armcc this isnt here, but its somewhere

class CtrTp{
    ushort tpCurrentX; // 0x0
    ushort tpCurrentY; // 0x2
    ushort tpNewX; // 0x4
    ushort tpNewY; // 0x6
    u8 flag4; // 0x8
    u8 tpTouch; // 0x9
    u8 flag6; // 0xa
    u8 flag7; // 0xb
    TouchPanelStatus mpTpStatus;
public:
    //CtrTp(void) { }
    void read();
};

class CtrBtn{
public:
    bit32 mCurrentInput;
    bit32 mLastFrameInput;
    bit32 mJustPressedInput;
    bit32 mReleasedInput;
    bit32 mRepeatedInput;
    short _14;
    u8 rev[30]; //watch ts be the `ULTIMATE` input table
    short _34;
    short _36;
    PadStatus mPadBuffer;
public:
    bit32 get(int) const;
    void read();
};

class CtrAcl{
protected:
    AccelerometerStatus mAclStatus;
    short rev;
    AccelerationFloat mAclFloat;
public:
    void read();
};

extern CtrBtn gBtn;
extern CtrTp gTp;
extern CtrAcl gAcl;