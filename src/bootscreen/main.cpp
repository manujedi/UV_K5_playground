#include "system.hpp"
#include "registers.hpp"
#include "uv_k5_display.hpp"
#include <string.h>
#include "image.hpp"

const System::TOrgFunctions &Fw = System::OrgFunc_01_26;
const System::TOrgData &FwData = System::OrgData_01_26;

int main() {
    Fw.IRQ_RESET();
    return 0;
}

extern "C" void Reset_Handler() {
    Fw.IRQ_RESET();
}

extern "C" void SysTick_Handler() {
    //Systick is executed 53 times before the bootscreen is drawn,
    // lets count to 60 so the orig. is shown for a few ticks and no race conditions
    static unsigned int counter = 0;
    if (counter < 60) {
        //wait
        counter++;
    }else if(counter == 60){
        //draw
        for (unsigned int i = 0; i < image_len; ++i) {
            FwData.pDisplayBuffer[i] = image[i];
        }
        Fw.FlushFramebufferToScreen();
        counter++;
    }


    Fw.IRQ_SYSTICK();
}