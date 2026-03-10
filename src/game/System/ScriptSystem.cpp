#include <System/ScriptSystem.hpp>

//extern const unsigned char unk_658108{
//};

ScriptSystem::ScriptSystem(){
    this->mStart = 0;
}

ScriptSystem::~ScriptSystem(){
}

void ScriptSystem::init(const void*){
    int* param_2;
    this->mStart = param_2;
    return;
}
//NON-MATCHING

/*void ScriptSystem::rewind(ScriptUnit* unit, const ScriptCode* code) { 
    u32 acc = 6;
    ushort param_1 = code->mCodeNum;
    uchar* param_2 = (unsigned char*)this->mStart; 
    uchar* param_3 = param_2 + (param_1 << 4); //r4
    char header = param_3[0];
    u32 count = header & 0x7F;
    {
        count++;
    }
    if ((int)count <= 0){ 
        goto update;
    }
    
    const uchar* lookup = unk_658108; 
    u16 mask = code->mCodeUnit;
    uint i = 0; 
    
    do {u32 bit = (mask >> i) & 1;
        if (bit){ 
            acc += 2;
        }

        else{ 
            u32 temp = i + (i >> 31); 
            uchar* byte_ptr = param_3 + (temp >> 1); 
            u64 shift = ((i << 31) >> 29); 
            uchar b = byte_ptr[1]; 
            uchar nibble = (b >> shift) & 0xF; 
            acc += lookup[nibble]; 
            
        } count--; 
        i++; 
       } while (count != 0); 
update: 
    unit->mUnitValue -= acc;
}*/