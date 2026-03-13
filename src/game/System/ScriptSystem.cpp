#include <System/ScriptSystem.hpp>
extern const unsigned char unk_658108[];

//extern const unsigned char unk_658108{
//};

ScriptSystem::ScriptSystem(){
    this->mStart = 0;
}

ScriptSystem::~ScriptSystem(){
}

void ScriptSystem::init(const void*){
    int* param_2;
    this->mStart = (int)param_2;
    return;
}

//NON-MATCHING

int ScriptSystem::rewind(ScriptUnit* unit, const ScriptCode* code){
}

// Hack coming up..? *Eyes emoji*
//
// Pain in the ass
/*int ScriptSystem::rewind(ScriptUnit * pCurrentUnit,ScriptCode const* pCurrentCode){
    int param_4 = this->mStart;
    uint param_8; // r2
    int param_r0 = 6;
    int param_9; // r3
    uchar* param_6 = (uchar*)param_4 + 16 * pCurrentCode->mCodeNum; // first add, param_6 could be r4
    int param_7 = *param_6 & 0x7F; //

    if((*param_6 & 0x80) != 0)
        ++param_7;
    
    if(param_7 > 0){
        param_8 = pCurrentCode->mCodeUnit;
        param_9 = 0;
        do{
            if(((param_8 >> param_9) & 1) != 0)
                param_9 += 2;
            else
                param_r0 += unk_658108[((uint) param_6[param_r0 / 2 + 1] >> ((4 * param_9) & 7)) & 0xF];
                param_7--;
                ++param_9;
        } while(param_7);
    }
    pCurrentUnit->mUnitValue -= param_r0;
    return param_r0;
}*/