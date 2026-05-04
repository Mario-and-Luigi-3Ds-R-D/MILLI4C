#pragma once

#include "types.hpp"
#include "System/Memory/MemAlcBase.hpp"

class MemAlc : public MemAlcBase{
protected:
    int flag3;
    int flag4;
    int flag5;
public:
    MemAlc(void);
    void initGxLow(uint,size_t,size_t); // ez
    void initBindList(); // 100%
    void allocateMessage(); // kinda ez
    void initCore(void* heap, u32 newheap); // 93%
    void destroy(); 
    void freeMemory();
    
    virtual void free(u32);
    virtual MemAlcBase* allocCore(u32,u32);
};

extern MemAlc gMem;

/*class MemAlcF : public MemAlcBase{
public:
    MemAlcF();

    virtual void free(uint);
    virtual MemAlcBase* allocCore(uint,uint);
};

class MemAlcB : public MemAlcF{
public:
    MemAlcB();

    virtual MemAlcBase* allocCore(uint,uint); // Legit the same except for orr added lmao
};

class MemAlcH : public MemAlc{
public:
    MemAlcH(void);

    
};*/