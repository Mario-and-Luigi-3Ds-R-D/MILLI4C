#include <System/AppletMan.hpp>
#include <nn/applet/CTR/applet_Api.h>
#include <nn/applet/CTR/applet_Info.h>
#include <nn/applet/CTR/applet_Wrapper.h>

/* STI */

nn::os::CriticalSection AppletMan::Sleep::_callback;
nn::os::LightEvent AppletMan::Sleep::_lightEventCallback;
nn::os::LightEvent AppletMan::Sleep::_lightCallback;

/* Callbacks */
void awakeCallback(uptr) {
    AppletMan::Sleep::_lightCallback.Signal();
    AppletMan::Sleep::_callbackSleep = 1;
}

int sleepQueryCallback(uptr) {
    AppletMan::Sleep::_lightCallback.Signal();
    if (nn::applet::CTR::detail::IsActive() != 0) {
        return 2;
    }
    return 1;
}


namespace AppletMan{
namespace Sleep{
    char _callbackSleep;
    bool _disable;
    s8 _state;
    bool _isSleep;

int update(){
    int canRec;
    nn::applet::CTR::OrderToCloseState pState;

    AppletMan::Sleep::_callback.Initialize();
    AppletMan::Sleep::_lightEventCallback.Initialize(1);
    AppletMan::Sleep::_lightCallback.Initialize(1);
    AppletMan::Sleep::_lightEventCallback.Signal();
    AppletMan::Sleep::_lightCallback.Signal();
    nn::applet::CTR::SetSleepQueryCallback(&sleepQueryCallback, 0);
    nn::applet::CTR::SetAwakeCallback(&awakeCallback, 0);
    nn::applet::CTR::detail::Enable(0);
    pState = nn::applet::CTR::detail::GetOrderToCloseState();

    canRec = (pState != 0 || nn::applet::CTR::IsReceivedWakeupByCancel()) ? 1 : 0;
    return canRec ^ 1;
}

void startup(){
    nn::applet::CTR::SetSleepQueryCallback(0,0);
    nn::applet::CTR::SetAwakeCallback(0,0);
    nn::applet::CTR::DisableSleep(1);
    AppletMan::Sleep::_lightEventCallback.Signal();
    AppletMan::Sleep::_lightCallback.Signal();
    nn::applet::CTR::detail::CloseApplication(0, 0, nn::applet::CTR::HANDLE_NONE);
}

void beginFromSleep(){

}

} // Sleep

namespace HomeMenu{
namespace NixSign{
    int unk2;
    void* _callbackFunc;
    void* _state;
/*
void getNixState(){
    if(_state != 0){
        setNixState();
    }
}

void setNixState(){
    // TODO
}
*/
} // NixSign
} // HomeMenu

}