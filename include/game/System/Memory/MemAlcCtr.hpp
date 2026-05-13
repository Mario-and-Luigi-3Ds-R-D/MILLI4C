#include "System/Memory/MemAlc.hpp"
#include "System/Ctr/File/CtrFileBase.hpp"
#include "System/Ctr/File/CtrModuleFile.hpp"

class MemAlcCtr{
public:
    MemAlc mMemAlc;

    struct FileMem{
        void* workingMem;
        void* currentMem;
        CtrFUncompSize* mpUncompSize;
        ushort mMountStatus;
    };

    static FileMem _fileMem;

    void mount(uint,uint,uint,bool);
    void mountRO(uint);
    static void finalizeMount();
    static void finalizeRO();

    /* Inlines */

    static void AllocToCore(size_t size, uint flags);
    void InitializeFS();
    void FinalizeFS();
};

extern MemAlcCtr gMemCtr;

/* inline void MemAlcCtr::AllocToCore(size_t size, uint flags) */

/* Allocs to CTR Core, used every where. Better to call it this way then to MANUALLY type it all the time. */

inline void MemAlcCtr::AllocToCore(size_t size, uint flags){
    gMemCtr.mMemAlc.allocCore(size,flags);
}

