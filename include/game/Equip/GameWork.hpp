#pragma once

#include "Equip/DataPc.hpp"
#include "types.hpp"

class GameWork{
public:
    u8 pad_1[6]; // 0x0
    ushort flag1_0x6; // 0x6
    ushort flag2_0x8; // 0x8
    ushort flag3_0xa; // 0xa
    ushort flag4_0xc; // 0xc
    ushort flag5_0xe; // 0xe
    ushort flag6_0x10; // 0x10
    u8 pad_2[10]; // 0x12
    ushort mBadgeBitFlag; // 0x1c
    u8 pad_3[17]; // 0x1e
    byte flag_0x2f; // 0x2f
    u8 pad_4[4]; // 0x30
    ushort flag_0x34; // 0x34
    u8 pad_20[70]; // 0x36
    uchar flag_0x7c; // 0x7c
    uchar flag_0x7d; // 0x7d
    uchar flag_0x7e; // 0x7e
    uchar flag_0x7f; // 0x7f
    ushort flag_0x80; // 0x80 ushort unknown
    ushort flag_0x82; // 0x82
    ushort flag_0x84; // 0x84
    int flag_0x86; // 0x86 int unknown
    uchar flag_0x8a; // 0x8a
    u8 pad_5[274]; // 0x8b
    byte flag_0x1a4; // 0x1a4
    byte flag_0x1a5; // 0x1a5
    byte flag_0x1a6; // 0x1a6
    ushort flag_0x1a7; // 0x1a7 ushort unknown
    byte mRealAreaNo; // 0x1a9
    ushort flag_0x1aa; // 0x1aa ushort unknown
    ushort mGetBadgeBitFlag; // 0x1ac
    ushort flag_0x1ae; // 0x1ae
    u8 pad_7[89]; // 0x1b0
    int flag_0x209; // 0x209
    int flag_0x20d; // 0x20d
    u8 pad_8[243]; // 0x211
    int mKoopaCastle; // 0x304
    u8 pad_whatecer[988]; // 0x308
    int mGetMenuEquipFlag; // 0x6e4
    ushort flag_0x6e8; // 0x6e8
    ushort flag_0x6ea; // 0x6ea
    u8 pad_16[56]; // 0x6ec
    int flag_0x724; // 0x724
    u8 pad_120[39]; // 0x728
    ushort flag_0x74f; // 0x74f
    short flag_0x751; // 0x751
    short flag_0x753; // 0x753
    short flag_0x755; // 0x755
    short flag_0x757; // 0x757
    byte flag_0x759; // 0x759
    ushort flag_0x75a; // 0x75a
    ushort flag_0x75c; // 0x75c
    u8 pad_9[4]; // 0x75e
    ushort flag_0x764; // 0x764
    ushort flag_0x766; // 0x766
    ushort flag_0x768; // 0x768
    ushort flag_0x76a; // 0x76a
    ushort flag_0x76c; // 0x76c
    ushort flag_0x76e; // 0x76e
    ushort flag_0x770; // 0x770
    ushort flag_0x772; // 0x772
    ushort flag_0x774; // 0x774
    ushort flag_0x776; // 0x776
    int flag_0x778; // 0x778
    int flag_0x77c; // 0x77c
    int flag_0x780; // 0x780
    u8 pad_10[6]; // 0x784
    ushort flag_0x78a; // 0x78a
    u8 pad_12220[398]; // 0x784
    int mCoinNum; // 0x91c
    u8 pad_11[230]; // 0x920
    ushort mItem; // 0xa06
    ushort mItemNum; // 0xa08
    byte flag_0xa0a; // 0xa0a
    u8 pad_12[17]; // 0xa0b
    ushort mGetBitFlag; // 0xa1c
    u8 pad_13[950]; // 0xa1e
    byte mColoBestTurn; // 0xdd4
    u8 pad_14[15]; // 0xdd5
    ushort mClearColosseum; // 0xde4
    ushort mNewColosseum; // 0xde6
    int mPuzzleClearTime; // 0xde8
    u8 pad_15[108]; // 0xdec
    uint mPlayablePuzzle; // 0xe58
    uint mNewPuzzle; // 0xe5c
//  START FUNC
//
//  START FUNC
    void FUN_00586970(uint,int);
    void FUN_00586acc(uint,int); 
    void FUN_00586b30(int,int); 
    void FUN_00586c24(uint,int); 
    void FUN_00586d14(uint,int); 
    void FUN_00586c50(int);
    void FUN_00586d40(byte,int);
    void FUN_00586d50(ushort);
    void FUN_00586d74(void); 
    int FUN_00586dbc(int,int);
    static void FUN_00586f3c(DataPc*,int,uint);
    static void FUN_00586f70(DataPc*,int,uint);
    void FUN_005f10d0sumpuzzle(uint); // __thiscall
    ushort FUN_005f1120(int,uint); 
    uint FUN_005f1148(uint); 
    static int FUN_005f1164(int,int,uint);
    byte FUN_005f11cc(void);

    void initGameWork(void);
    void updatePlayTime(void);
    void begin(void); // this call MONKE
    void updatePcStatus(uchar); // goes 2 UpdatePcStatus
    uint calcplayTime();
    void startPlayTime(void);
    void UpdatePcStatus(DataPc*);
    int addItem(ushort,char);
    void updateEquip(DataPc*,ushort,ushort,int);
    void equipBadge(uchar,ushort);
    int addPcStatus(uchar,PcStatusType,DataPc::ParamAddType,int,bool);
    void getPlayTime(short *,short *,short *,short *);
    void onNewPuzzle(uchar);
    static int ApplyPerCent(int,int);
    uchar getRealAreaNo(); // 0x005F0FD0
    static uchar getRealAreaNo(uchar); // 0x0058690
    void onNewColosseum(uchar);
    void putBadgeBitFlag(ushort);
    int existKoopaCastle(void);
    void onClearColosseum(uchar);
    void onPlayablePuzzle(uchar);
    void putPuzzleClearTime(uchar,uint);
    void putMenuEquipBitFlag(uint,bool);
    void putColosseumBestTurn(uchar,uchar);
    int addCoin(int);
    void equipItem(uchar,ushort,uchar);
    uint getItemNum(ushort);
    void isHardMode();
    void getEquipMax();
    bool isNewPuzzle(uchar);
    void getUseItemMax();
    void initKoopaCastle(uint);
    int isClearPuzzle(uchar);
    void getEquipStatus(DataPc *,uchar,ushort,uchar);
    bool isNewColosseum(uchar);
    short getBadgeBitFlag();
    uint isPlayablePuzzle(uchar);
    static void getPuzzleClearTime(uchar*, int, int); // all static is made by the other dude
    GameWork* getColosseumBestTurn(uchar);
};

extern GameWork gGameWork;