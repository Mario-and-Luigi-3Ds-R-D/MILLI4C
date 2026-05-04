#pragma once

class GxMemAlc{
protected:
    void* mMemoryAddress; // 0x0
    void* mAppMemorySize; // 0x4
    void* mStartAddr; // 0x8
    void* mEndAddr; // 0xC
    void* mRamEndAddr; // 0x10
    void* mMemoryRamEndAddr; // 0x14
    void* unk_0x18; // 0x18
    void* unk_0x1c; // 0x1C

    static void* _me;
public:
    void startup(); // Used by nninitStartUp();
};
extern GxMemAlc gGxMemAlc;