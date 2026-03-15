#pragma once

class IMiracleChrAct{
public:
    virtual ~IMiracleChrAct();
    virtual void vt_0x8();
    virtual int vt_0xc(); // ret 0
    virtual void vt_0x10();
    virtual void vt_0x14();
    virtual void vt_0x18();
    virtual void vt_0x1c();
    virtual void vt_0x24();
    virtual void vt_0x2c(); // goes to miraclechr
    virtual void vt_0x30(); // goes to miraclechr
    virtual void vt_0x38(); // loads sum in miraclechr
    virtual void vt_0x3c();
    virtual void vt_0x40();
};