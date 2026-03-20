#pragma once

//wowsers also a big one

#include "game/types.hpp"
#include "Ctr/CtrModule.hpp"
#include "Boot/BtlBootInfo.hpp"
#include "TaskMainBase.hpp"

enum class GAME_MODE{
    REAL = 0,
    DREAM = 1,
    BATTLE_ENC = 2,
    GIANT = 3,
    COLOSSEUM =4,
    BROS_ATK_MENU = 5,
    SHOP_MENU = 6,
    OPEN_FILE_MENU = 7,
    SAVE_MENU = 8,
    MINI_GAME = 9,
    TITLE = 10,
    STAFFROLL = 11,
};

class GameMain : public TaskMainBase{ //0x4180 large, big
    int flag1; // 0x10
public:
    virtual void init(CtrModule*);
    virtual ~GameMain();
    GameMain();

    void start(int,TaskMan*,uint);
    GameMain* gameModeOld(void);
    void back(void); 
    void change(GAME_MODE);
    void changeBgm(BtlBootInfo*);
    void getFlags();  
};

