#pragma once

#include "game/types.hpp"
#include "Message.hpp"
#include "MessageSimple.hpp"
#include "CellAnime/CellAnimeState.hpp"
#include "Prim.hpp"
//fix namespace issues but yuh yuh

namespace UIListWindowPlus{ //uses SOMETHING as a base
class InitParam{
    //addwork here
public:
    InitParam(void);
}; //end initparam
class Item : public UIListWindowPlus{ //unk
    //addwork
public:
    Item(void);
}; //end item
}; //namespace UIListWindowPlus

class UIListWindowPlus{

public:
    virtual ~UIListWindowPlus();

    UIListWindowPlus(void);
    void update(); //unk
    void init(UIListWindowPlus::InitParam param);
    void draw(CellAnimeState& state, Prim, MessageDrawer&);
    void drawListCA(CellAnimeState& state, UICommon::Pos const& pos, int, int);
    void drawCaption(CellAnimeState& state);
    void drawListStr(MessageDrawer&, UICommon::Pos const& pos, int, int);
    void tpCtrl(UIListWindowPlus::Item** item,short,short,char,char);
    void tpCtrlStart(short,short); //void is unkown
    void tpCtrlCnt(short,short); //void is unk
    void tpCtrlEnd(short,short); //void is unk
    void keyCtrl(uint,uint,uint,uint,float);
};