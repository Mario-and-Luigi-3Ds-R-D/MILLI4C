#pragma once

#include "game/types.hpp"
#include "Ctr/File/CtrFS.hpp"
#include "Ctr/CtrSave.hpp"
#include "Message.hpp"

class Backup : public CtrSaveFile{
public:
    virtual ~Backup();

    Backup(void);
    void isBusyCoping(void);
    void writeInitData(void);
    int copySaveData(short,short);
    int getSaveData1(short);
    void isBusyFormat(void);
    void isBusyReading(void);
    void isBusyWriting(void);
    void readSaveData2(short);
    void buildPrizeWork(void);
    void deleteSaveData(short,bool);
    void writeSaveData0(short);
    void setMsgPlayParam(Message::PlayParam *,int *);
    void destroyPrizeWork(void);
    void writeSaveDataPartial(uint,short);
    void init(CtrFS *);
    void term(void);
    void mount(void);
    void format(void);
    void addCoin(int);
    void addItem(ushort,signed char);
    void errorCode(void);
};