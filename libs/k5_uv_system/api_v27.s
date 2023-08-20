//Comments are the Labels from https://github.com/DualTachyon/uv-k5-ghidra


.globl PrintTextOnScreen        //FB_PrintString
PrintTextOnScreen = 0x00008774 + 1;

.globl DelayMs      //System_DelayUs
DelayMs = 0x0000d114 + 1;

.globl DelayUs      //SYSTICK_Delay
DelayUs = 0x0000d128 + 1;

.globl WriteSerialData      //UART_Send
WriteSerialData = 0x0000be6c + 1;

.globl BK4819Write      //BK4819_WriteRegister
BK4819Write = 0x0000af28 + 1;

.globl BK4819Read       // BK4819_GetRegister
BK4819Read = 0x0000a988 + 1;

.globl FlushFramebufferToScreen     //ST7565_BlitFullScreen
FlushFramebufferToScreen = 0x0000b660 + 1;

.globl PollKeyboard     //GPIO_StrangePollForLow
PollKeyboard = 0x0000b0e0 + 1;

.globl FormatString //sprintf
FormatString = 0x0000c710 + 1;

.globl PrintSmallDigits //FB_BlitStringWithFont
PrintSmallDigits = 0x00008734 + 1;

.globl PrintFrequency   //FB_RenderSomethingOver3Lines
PrintFrequency = 0x00008674 + 1;

.globl AirCopy72        //BK4819_SendFSKData
AirCopy72 = 0x0000a6a4 + 1;

.globl AirCopyFskSetup  //AIRCOPY_FSK_EnableFFSK1200/1800Rx
AirCopyFskSetup = 0x0000a540 + 1;

.globl BK4819Reset      //BK4819_Init
BK4819Reset = 0x0000a7f4 + 1;

.globl IntDivide        //UnsignedIntegerDivide
IntDivide = 0x00000128 + 1;

.globl Strlen           //dodgy_strlen
Strlen = 0x000001e8 + 1;

.globl BK4819SetChannelBandwidth        //BK4819_SetFilterBandwidth
BK4819SetChannelBandwidth = 0x0000aa70 + 1;

.globl BK4819WriteFrequency //BK4819_SetFrequency
BK4819WriteFrequency = 0x0000aae4 + 1;

.globl BK4819SetPaGain      // BK4819_SetupPowerAmplifier
BK4819SetPaGain = 0x0000aafc + 1;

.globl BK4819ConfigureAndStartTxFsk //Configure_CxCSS
BK4819ConfigureAndStartTxFsk = 0x00001d00 + 1;

.globl BK4819ConfigureAndStartRxFsk     //FUN_0000a664
BK4819ConfigureAndStartRxFsk = 0x0000a664 + 1;

.globl BK4819SetGpio    // BK4819_ToggleGpioOut
BK4819SetGpio = 0x0000a7bc + 1;

.globl FlushStatusbarBufferToScreen     //ST7565_BlitStatusLine
FlushStatusbarBufferToScreen = 0x0000b6d8 + 1;

.globl UpdateStatusBar      //FB_RenderVariousIcons
UpdateStatusBar = 0x00009c38 + 1;

.globl AdcReadout       //ADC_GetConversion_CH4_CH9
AdcReadout = 0x00009da4 + 1;

.globl SomeAmStuff      //BK4819_SetAGC
SomeAmStuff = 0x0000c180 + 1;

.globl IRQ_RESET        //same
IRQ_RESET = 0x000000d4 + 1;

.globl IRQ_SYSTICK
IRQ_SYSTICK = 0x0000c3c0 + 1;

//ignore NVR stuff for now
/*
.globl ConfigureTrimValuesFromNVR
ConfigureTrimValuesFromNVR = 0x20000230 + 1;

.globl FLASH_ReadNvrWord
FLASH_ReadNvrWord = 0x20000214 + 1;

.globl SystemReset
SystemReset = 0x200001f8 + 1;

.globl FLASH_SetProgramTime
FLASH_SetProgramTime = 0x200001d4 + 1;

.globl FLASH_SetMode
FLASH_SetMode = 0x200001b4 + 1;

.globl FLASH_WakeFromDeepSleep
FLASH_WakeFromDeepSleep = 0x20000194 + 1;

.globl FLASH_SetEraseTime
FLASH_SetEraseTime = 0x20000170 + 1;

.globl FLASH_SetReadMode
FLASH_SetReadMode = 0x20000148 + 1;

.globl FLASH_Set_NVR_SEL
FLASH_Set_NVR_SEL = 0x20000128 + 1;

.globl FLASH_ReadByAPB
FLASH_ReadByAPB = 0x200000e8 + 1;

.globl FLASH_ReadByAHB
FLASH_ReadByAHB = 0x200000dc + 1;

.globl FLASH_Unlock
FLASH_Unlock = 0x200000d0 + 1;

.globl FLASH_Lock
FLASH_Lock = 0x200000c4 + 1;

.globl FLASH_MaskUnlock
FLASH_MaskUnlock = 0x200000b0 + 1;

.globl FLASH_SetMaskSel
FLASH_SetMaskSel = 0x20000094 + 1;

.globl FLASH_MaskLock
FLASH_MaskLock = 0x20000080 + 1;

.globl FLASH_Init
FLASH_Init = 0x2000005c + 1;

.globl FLASH_Start
FLASH_Start = 0x20000044 + 1;

.globl FLASH_IsInitBusy
FLASH_IsInitBusy = 0x2000002c + 1;

.globl FLASH_IsBusy
FLASH_IsBusy = 0x20000014 + 1;

.globl FLASH_RebootToBootloader
FLASH_RebootToBootloader = 0x20000000 + 1;

*/

.globl gDisplayBuffer   //same
gDisplayBuffer = 0x20000704;

.globl gSmallDigs
gSmallDigs = 0x0000d648;

.globl gSmallLeters
gSmallLeters = 0x0000d370;

.globl gFlashLightStatus        //same
gFlashLightStatus = 0x200003b3;

.globl gStatusBarData   //same
gStatusBarData = 0x20000684;

.globl gVoltage     //same
gVoltage = 0x20000406;
