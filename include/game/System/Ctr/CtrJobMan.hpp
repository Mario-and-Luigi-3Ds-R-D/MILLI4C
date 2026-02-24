#pragma once

#include "game/types.hpp"
#include "Job.hpp"

class CtrJobMan{
public:
    virtual ~CtrJobMan();

    CtrJobMan(void);
    void init(void *,int,int);
    void term(void);
    void jam(Job *);
    void isBusy(Job *);
    void enqueue(Job *);
    void release(Job *);
    void release(Job *);
};