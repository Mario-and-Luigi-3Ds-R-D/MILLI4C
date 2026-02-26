#pragma once

#include "FieldSrtBase.hpp"
#include "FReturnCode.hpp"
#include "FieldObj.hpp"
#include "Etc/FieldBlock.hpp"
#include "game/types.hpp"

class FieldChr{ //imports from something maybe Chrprim?, FielcChr vtable @ 0x006b8d74
    u8 unk[0x2f8];
public:
    virtual ~FieldChr();

    FieldChr(void);
};

class FieldChrBase{ //FieldChrBase vtable @ 0x006b3250
    u8 unk[0xe0];
public:
    virtual ~FieldChrBase();

    FieldChrBase(void);
    FieldReturnCode getReturnCode();
    FieldTypeReturnCode getSubReturnCode();
};

class FieldChrCA : public FieldChr, public FieldCAChrBase{ //FieldChrCA vtable @ 0x006aee34
};

class FieldChrMdl : public FieldChr{ //FieldChrMdl vtable @ 0x006b1ad8
    virtual ~FieldChrMdl();

    FieldChrMdl(void);
};

class FieldChrPrim : public FieldChrBase, public FieldSrtBase { //FieldChrPrim vtable @ 0x006b3290
public:
    virtual ~FieldChrPrim();

    FieldChrPrim(void);
};

class FieldChrPrimCA{ //FieldChrPrimCA vtable @ 0x006b5838
public:
    virtual ~FieldChrPrimCA();

    FieldChrPrimCA(void);
};

class FieldColChr : public FieldBlock{ //FieldChrCol vtable @ 0x006b1fe4
public:
    virtual ~FieldColChr();

    FieldColChr(void);
};

class FieldCAChrBase : public FieldObjBase{ //FieldCAChrBase vtable @ 0x006b57bc
public:
    virtual ~FieldCAChrBase();

    FieldCAChrBase(void);
};