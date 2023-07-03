#include "system.hpp"
#include "hardware/hardware.hpp"
#include "registers.hpp"
#include "uv_k5_display.hpp"
#include "pong.hpp"
#include <string.h>

extern "C" void __libc_init_array();

CSPong<System::OrgFunc_01_26, System::OrgData_01_26> Pong;

int main()
{
   System::JumpToOrginalFw();
   return 0;
} 

void MultiIrq_Handler(unsigned int u32IrqSource)
{
   static bool bFirstInit = false;
   if(!bFirstInit)
   {
      System::CopyDataSection();
      __libc_init_array();
      bFirstInit = true;
   }
   
   static unsigned int u32StupidCounter = 1;
   if((!(u32StupidCounter++ % 5) && u32StupidCounter > 200))
   {
      Pong.Handle();
   }
}