#include "System/Memory/MemAlc.hpp"
#include "System/Ctr/File/CtrFileBase.hpp"
#include "System/Ctr/File/CtrModuleFile.hpp"

class MemAlcCtr{
public:
    MemAlc* mMemAlc;
    struct FileMem{
        void* workingMem;
        void* currentMem;
        void* newMem;
        ushort ststus;
    };

    static FileMem _fileMem;

    void mountFS(int,int,int,int);
    void mountRO(int);
    static void finalizeFS();
    static void finalizeRO();
    ~MemAlcCtr();
};

extern MemAlcCtr gMemCtr;

