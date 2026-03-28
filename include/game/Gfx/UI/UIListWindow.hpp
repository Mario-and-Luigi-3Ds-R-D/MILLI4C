#pragma once

#include "game/types.hpp"
#include "Message.hpp"

class UIListWindow{ //MessageSimple starts at 0x5d
public:
    class Item{
    u8 _pad_[0x10]; // 0x0, 16 padding bytes 0x10 starts something new
    public:

    void reset();

};// Item
    class InitParam{
    u8 _pad_[228]; // 0x0, padding for 228 bytes
    public:

    InitParam(void);

}; //InitParam
    virtual ~UIListWindow();
    
    UIListWindow(void);
    void getCurNo(uchar CurNo);
    void draw();
    void drawArrow();
    void update();
}; // UIListWindow

