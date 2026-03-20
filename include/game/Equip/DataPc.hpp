#pragma once

#include "types.hpp"

class DataPc{
public:
    ushort flag1; // 0x0
    ushort flag2; // 0x2
    ushort flag3; // 0x4
    ushort flag4; // 0x6
    ushort flag5; // 0x8
    u8 pad1[0x2a];
    ushort flag6; // 0x34 hopefully
    ushort flag7; // 0x38
    
    class ParamAddType{
    public:
}; // ParamAddType
}; // DataPc

class PcStatusType{
};