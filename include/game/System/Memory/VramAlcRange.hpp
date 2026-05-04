#include "types.hpp"
#include "System/Memory/MemAlc.hpp"

class VramAlcBase{
public:
    virtual u32 allocCore(u32,bool,u32) = 0;
    virtual VramAlcBase* free() = 0;

};

class VramAlcRange : public VramAlcBase{
public:
    VramAlcRange();
    ~VramAlcRange();

    static u32 allocSize(u32,u32); // 100%
    void initCore(void*,u32,u32);
    void merge();
    void split(u32);
    void term(); //100 except tiny error :(


    virtual u32 allocCore(u32,bool,u32); // prob has more params in
    virtual VramAlcBase* free();

    // Pool
    class Pool{
    public:
        u32 flag1; // 0x0
        u32 flag2; // 0x4
        u32 flag3; // 0x8
        u32 flag4; // 0xc
        
        Pool();
        ~Pool();
    };
public:
    Pool poolObj[8];
    MemAlc* mpMemAlc;
    void* mStatus;
};