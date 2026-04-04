//has _vptr and also maybe contains/might be used for MemAlcB, and F
/*#pragma once

#include "types.hpp"
#include "System/Memory/MemAlcBase.hpp"

class MemAlc : public MemAlcBase{
public:
    ~MemAlc();
    MemAlc(void);
    void initCore(void*, uint);


    virtual void free(uint);
    virtual MemAlcBase* allocCore(uint,uint);
};

class MemAlcF : public MemAlcBase{
public:
    MemAlcF(void);

    virtual void free(uint);
    virtual MemAlcBase* allocCore(uint,uint);
};

class MemAlcB : public MemAlcF{
public:
    MemAlcB(void);

    virtual MemAlcBase* allocCore(uint,uint); // Legit the same except for orr added lmao
};

class MemAlcH : public MemAlc{
public:
    MemAlcH(void);
};*/