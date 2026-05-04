#include <System/AppletMan.hpp>

// Prepare for sti plus make armcc no cry

nn::os::CriticalSection AppletMan::Sleep::_callback = *(nn::os::CriticalSection*)0;
nn::os::LightEvent AppletMan::Sleep::_lightEventCallback = *(nn::os::LightEvent*)0;
nn::os::LightEvent AppletMan::Sleep::_lightCallback = *(nn::os::LightEvent*)0;

// Global funcs for Applet
void awakeCallback(void) {
    AppletMan::Sleep::_lightCallback.Signal();
    AppletMan::Sleep::_callbackSleep = 1;
}

int sleepQueryCallback() {
    AppletMan::Sleep::_lightCallback.Signal();
    if (nn::applet::CTR::detail::IsActive() != 0) {
        return 2;
    }
    return 1;
}


namespace AppletMan{
namespace Sleep{

int update(){
    int canRec;
    bool isReceived;
    nn::applet::CTR::OrderToCloseState pState;

        AppletMan::Sleep::_callback.Initialize();
        AppletMan::Sleep::_lightEventCallback.Initialize(1);
        AppletMan::Sleep::_lightCallback.Initialize(1);
        AppletMan::Sleep::_lightEventCallback.Signal();
        AppletMan::Sleep::_lightCallback.Signal();
        nn::applet::CTR::SetSleepQueryCallback((nn::applet::CTR::AppletSleepQueryCallback)&sleepQueryCallback, 0);
        nn::applet::CTR::SetAwakeCallback((nn::applet::CTR::AppletAwakeCallback)&awakeCallback,0);
        nn::applet::CTR::detail::Enable(0);
        pState = nn::applet::CTR::detail::GetOrderToCloseState();
        if(pState == 0){
            isReceived = nn::applet::CTR::IsReceivedWakeupByCancel();
            canRec = isReceived;
            if(canRec == 0)
                goto ret;
        }
        canRec = 1;
    ret:
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
/*
void getNixState(uint param_2){
    if(AppletMan::HomeMenu::NixSign::_state != 0){
        AppletMan::HomeMenu::getNixState((uint)AppletMan::HomeMenu::NixSign::_state, param_2);
    }
}

void getNixState(int state, uint){
    // TODO
}
*/
} // NixSign
} // HomeMenu

}