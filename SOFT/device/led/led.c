#include <plib.h>

#include "led.h"

UINT8 led07;

void Led0 (BOOL state){
    if (!state){
        led07 = led07 | 0b00000001;
    }
    else {
        led07 = led07 & 0b11111110;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led1 (BOOL state){
    if (!state){
        led07 = led07 | 0b00000010;
    }
    else {
        led07 = led07 & 0b11111101;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led2 (BOOL state){
    if (!state){
        led07 = led07 | 0b00000100;
    }
    else {
        led07 = led07 & 0b11111011;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led3 (BOOL state){
    if (!state){
        led07 = led07 | 0b00001000;
    }
    else {
        led07 = led07 & 0b11110111;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led4 (BOOL state){
    if (!state){
        led07 = led07 | 0b00010000;
    }
    else {
        led07 = led07 & 0b11101111;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led5 (BOOL state){
    if (!state){
        led07 = led07 | 0b00100000;
    }
    else {
        led07 = led07 & 0b11011111;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led6 (BOOL state){
    if (!state){
        led07 = led07 | 0b01000000;
    }
    else {
        led07 = led07 & 0b10111111;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void Led7 (BOOL state){
    if (!state){
        led07 = led07 | 0b10000000;
    }
    else {
        led07 = led07 & 0b01111111;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void AllLed07 (BOOL state){
    if (!state){
        led07 = 0b11111111;
    }
    else {
        led07 = 0b00000000;
    }
    OpenI2C();
    WriteCharI2C(0x40);
    WriteCharI2C(led07);
    CloseI2C();
}

void InitLed07 (void){
    AllLed07(TRUE);delaymSec(100);
    AllLed07(FALSE);delaymSec(100);
    AllLed07(TRUE);delaymSec(100);
    AllLed07(FALSE);delaymSec(100);
    AllLed07(TRUE);delaymSec(100);
    AllLed07(FALSE);delaymSec(100);
    AllLed07(TRUE);delaymSec(100);
    AllLed07(FALSE);delaymSec(100);
    AllLed07(TRUE);delaymSec(100);
    AllLed07(FALSE);delaymSec(100);
}