#include "System/Ctr/CtrArcFile.hpp"

template<typename BinGlu3AcsIdxHdr>
class CtrFileTmp : public CtrArcFile{
public:
    virtual void getBinHdr(int* pBinHeader){
        this->mUncompFile.mBinHeader.currentOf = pBinHeader;
    }
    virtual void getOfs(int offset,uint* ptr,uchar* bPtr){
        this->mUncompFile.mBinHeader.getOfs();
    }
};
