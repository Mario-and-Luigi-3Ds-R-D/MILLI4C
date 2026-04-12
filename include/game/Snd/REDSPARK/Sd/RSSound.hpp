#pragma once

#include "types.hpp"
#include "Snd/REDSPARK/Sd/RSDataMan.hpp"
#include "Snd/REDSPARK/Sd/RSTrackMan.hpp"
#include "Snd/REDSPARK/Sd/RSVoiceMan.hpp"
#include "Snd/REDSPARK/Sd/RSMemory.hpp"

namespace REDSPARK{
namespace Sd{

class RSSound{
protected:
    struct _info{
        bool mState;
        void* mSleepStatus;
        void* mCurrentThreadStatus;
        int unk_0xc;
    };
    
    struct _pointInfo{
        int unk_0x0;
        int unk_0x4;
        f32 unk_0x8;
    };

    class FxMan{
    public:
        FxMan();
    };

    class SndWork{
    public:
        SndWork();
        ~SndWork();
        void Start();
    };
    
public:
    virtual ~RSSound();

};
}
}