#pragma once

#include "Gfx/CellAnime/CellAnime.hpp"
#include "System/TaskList.hpp"

class FieldCA : public CellAnime, TaskList{ //FieldCA
public:
    virtual ~FieldCA();

    FieldCA(void);
    void draw(CellAnime* );
    void init(CellAnime* );
};
static_assert(sizeof(FieldCA) == 0x118, "Oh noes! BAD!");

class FieldCAData{ //FieldCAData, no vfunc
};

class FieldCAInfo{ //FieldCAInfo, Empty vtable
};

class FieldCAList{ //FieldCAList
    s32 flag1;
    u8 pad[0x4];
    s32 flag2;
public:
    virtual ~FieldCAList();

    FieldCAList(void);
};
static_assert(sizeof(FieldCAList) == 0x18);

class FieldSystemCA : public FieldCA{ //FieldSytstemCA
public:
    virtual ~FieldSystemCA();

    FieldSystemCA(void);
};
