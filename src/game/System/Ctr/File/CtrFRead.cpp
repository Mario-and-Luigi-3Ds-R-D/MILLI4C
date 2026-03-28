#include <System/Ctr/File/CtrFRead.hpp>

CtrFReadBase::CtrFReadBase(){
    this->flag0 = 0;
    this->flag1 = 0;
    (int)this->flag7 = 0;
}

// Non Match

void CtrFReadBase::start(){
}

void Mem__Free(void*){}; // temp

void CtrFReadBase::term() {
    if (this->flag7 & 1) {
        if ((this->flag1 != 0) && (this->flag3 != 0)) {
            Mem__Free((void*)this->flag3);
            this->flag3 = 0;
        }
        this->flag7 = (this->flag7 & ~1);
    }
}

// End Non Match

int CtrFReadBase::vt_0xc(){
    return 0x81000001;
}

// Start CtrFReadEx

CtrFReadEx::CtrFReadEx(void){ 
}

// Non Match

void CtrFReadEx::start(){
}

void CtrFReadEx::term() {
    CtrFS* pFileSystem;

    pFileSystem = (CtrFS*)this->mFileSystem->mRomPath;
    (int)this->flag0 = pFileSystem->flag4;
    pFileSystem->flag4 = (int)this;

    CtrFReadBase::term();
}

// End Non Match

int CtrFReadEx::vt_0xc(){
    return 0x81000003;
}