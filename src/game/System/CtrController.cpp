#include <System/CtrController.hpp>

CtrBtn gBtn;
CtrAcl gAcl;
CtrTp gTp;

#ifdef CTRBTN
#endif

bit32 CtrBtn::get(int current) const{
    return (&this->mCurrentInput)[current];
}

#ifdef CTRACL
#endif

/* CtrAcl::read() */

/* Used to as a entry to the AccelerometerReader */

/* Gets ran every game loop. */

//void CtrAcl::read() {
//    static nn::hid::CTR::AccelerometerReader gAccelerometerReader(nn::hid::CTR::GetAccelerometer());
//    AccelerometerReader* pReader = &gAccelerometerReader;
//    pReader->ReadLatest(&this->mAclStatus);
//    pReader->ConvertToAcceleration(&this->mAclFloat, 1, &this->mAclStatus, -1);
//}