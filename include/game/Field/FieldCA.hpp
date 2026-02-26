#pragma once

#include "Gfx/CellAnime/CellAnime.hpp"
#include "system/TaskList.hpp"

class FieldCA : public CellAnime, TaskList{ //FieldCA
public:
    virtual ~FieldCA();

    FieldCA(void);
    void draw(CellAnime* );
    void init(CellAnime* );
};

class FieldCAData{ //FieldCAData, unknown
};

class FieldCAInfo{ //FieldCAInfo
};

class FieldCAList{ //FieldCAList
    int unk1;
    u8 pad[8];
public:
    virtual ~FieldCAList();

    FieldCAList(void);
};

class FieldSystemCA : public FieldCA{ //FieldSytstemCA
public:
    virtual ~FieldSystemCA();

    FieldSystemCA(void);
};
