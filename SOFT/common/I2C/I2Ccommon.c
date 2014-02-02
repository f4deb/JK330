#include <plib.h>

#include "I2Ccommon.h"



void OpenI2C (void){
    StartI2C1();//Send the Start Bit
    IdleI2C1();//Wait to complete
}
void WriteCharI2C (UINT8 data){
    MasterWriteI2C1(data );
    IdleI2C1();
    //delaymSec(100);
}
void CloseI2C (void){
    StopI2C1();//Send the Stop condition
    IdleI2C1();//Wait to complete
}