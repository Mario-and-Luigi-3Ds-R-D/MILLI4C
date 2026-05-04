#pragma once

#include "types.hpp"
#include "System/Ctr/File/CtrFS.hpp"
#include "System/Ctr/CtrSave.hpp"
#include "Message/Message.hpp"

class Backup : public CtrSaveFile{
public:
    ~Backup();
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
    bool format(void);
    void addCoin(int);
    void addItem(ushort,signed char);
    void errorCode(void);

    struct bufHead{

    };

    struct errCode{

    };

    struct fs{

    };

    static errCode* _errCode;
    static fs* _fs;
    static Backup* s_Instance;

};
    static Backup::bufHead* _bufHead;