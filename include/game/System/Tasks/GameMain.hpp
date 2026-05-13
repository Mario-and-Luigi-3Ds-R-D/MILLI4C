#pragma once

//wowsers also a big one

#include "types.hpp"
//#include "Boot/FieldBootInfo.hpp"
#include "System/Memory/MemAlc.hpp"
#include "System/Ctr/CtrModule.hpp"
#include "System/Ctr/File/CtrFileBase.hpp"
#include "System/Tasks/Boot.hpp"
#include "System/Task.hpp"

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
public:
    class ModuleMan{
    public:
        ModuleMan();

        void* _0;
        CtrModule* mpModule;
        void* _C;
        void* _10;
    };

    struct Info{
        void* mpNewMode;
    };
public:

#ifdef BUILD_DEBUG
    static const wchar_t* CRO_LIST[14];
#else
    static const wchar_t* CRO_LIST[13];
#endif

protected:
    ModuleMan mModuleMan[8];
    void* _ac;
    void* _b0;
    Info* mpGameInfo;
    void* mpOldGameMode;
public:
    virtual void update();
    virtual ~GameMain();

    void back();
    void bootField();//(FieldBootInfo*, MemAlc*);
    void change(GAME_MODE);
    void changeEnter(GAME_MODE, void*, MemAlc*); // void* is the boot object, like gFieldBootInfo
    void create();
    //void enter();
    void enterTask(); // ro::GetAddress -> "EntryTask"
    void entry();
    static void* gameModeOld();
    static void* initTaskTable();
    //void load(CtrFileBase*)
    void newInfo();
    Info* nowInfo();
    void* preInfo();
    //void startNew();

};

const wchar_t* GameMain::CRO_LIST[] = {
    L"rom:/RO/FReal.cro",
    L"rom:/RO/FDream.cro",
    L"rom:/RO/BNormal.cro",
    L"rom:/RO/HugeBattle.cro",
    L"rom:/RO/Colosseum.cro",
    L"rom:/RO/Menu.cro",
    L"rom:/RO/Shop.cro",
    L"rom:/RO/Load.cro",
    L"rom:/RO/Save.cro",
    L"rom:/RO/Colosseum.cro",
    L"rom:/RO/MiniGame.cro",
    L"rom:/RO/Title.cro",
    L"rom:/RO/StaffRoll.cro",
#ifdef BUILD_DEBUG
    L"rom:/RO/BootMenu.cro",
#endif
};