#pragma once

#include "game/types.hpp"
#include "Message.hpp"

namespace UIListWindow{
class Item{
    u8 _pad_[16]; //16 padding bytes, 0x10 starts something new
public:

    void reset();
};//end item
class InitParam{
    u8 _pad_[228]; //padding for 228 bytes
public:

    InitParam(void);
};
};

class UIListWindow{ //MessageSimple starts at 0x5d
public:
    virtual ~UIListWindow();
    
    UIListWindow(void);
    void getCurNo(uchar CurNo);
    void draw(); //unk cellanime is huge here tho
    void drawArrow();
    void update();
};
