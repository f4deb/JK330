#include <plib.h>

#include "PCF8573.h"
#include "../../common/I2C/I2Ccommon.h"

/**
 * getTime_8573
 * lit l'heure et la date et la stock dans la structure "hor"
 * @param  : none
 * @return : none
 **/
void getTime_8573 (void){

    int BCD1,BCD2,BCD3,BCD4;
    OpenI2C();
    WriteCharI2C(PCF8573_0_W);
    WriteCharI2C(0x00);
    OpenI2C();
    WriteCharI2C(PCF8573_0_R);
    hor.ti_hour = ReadCharI2C(ACK);
    hor.ti_min = ReadCharI2C(ACK);
    hor.ti_day = ReadCharI2C(ACK);
    hor.ti_month = ReadCharI2C(NACK);
    CloseI2C();
    
}

void setTime_8573 (void){
    OpenI2C();
    WriteCharI2C(PCF8573_0_W);
    WriteCharI2C(0x00);
    WriteCharI2C(hor.ti_hour);
    WriteCharI2C(hor.ti_min);
    WriteCharI2C(hor.ti_day);
    WriteCharI2C(hor.ti_month);
    CloseI2C();
}