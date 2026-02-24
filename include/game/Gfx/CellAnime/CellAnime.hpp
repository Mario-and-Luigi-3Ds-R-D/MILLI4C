#pragma once

#include "game/types.hpp"
//#include "include/CTR-SDK/include/nn/util/util_Color.h"
#include "CellAnimeTex.hpp"
#include "CellAnimeState.hpp"
#include "CellAnimeFmtCtr.hpp"

class CellAnimeState;

class CellAnime{
public:
    virtual ~CellAnime();

    CellAnime(void);
    void init(void const*, CellAnimeTex const*, void const*,uchar,short,short);
    void play(uchar,short,short);
    void setConstColor(int);//nn::util::Color8);
    void draw(CellAnimeState &);
    void GetPtnNo(CellAnimeFmtCtr::FileHeader const*,char,int);
    void drawCore(CellAnimeState &,uint *,CellAnimeFmtCtr::Pattern const*,bool);
    void term(void);
    void setFrm(int);
    void update(void);
    void setPtnNo(ushort);
    void setSeqPtnFrm(int,int);
    void getConstColor(int);
    void getPtnFromSeqPtnNo(uchar,ushort);
};
