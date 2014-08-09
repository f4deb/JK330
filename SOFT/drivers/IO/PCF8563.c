#include <plib.h>

#include "PCF8563.h"
#include "../../common/I2C/I2Ccommon.h"

/**
 * getTime_8563
 * lit l'heure et la date et la stock dans la structure "hor"
 * @param  : none
 * @return : none
 **/
void getTime_8563 (void){
    OpenI2C();
    WriteCharI2C(PCF8563_0_W);
    WriteCharI2C(0x02);
    OpenI2C();
    WriteCharI2C(PCF8563_0_R);
    hor.ti_sec = ReadCharI2C(ACK) & 0b01111111;
    hor.ti_min = ReadCharI2C(ACK) & 0b01111111;
    hor.ti_hour = ReadCharI2C(ACK) & 0b00111111;
    hor.ti_day = ReadCharI2C(ACK) & 0b00111111;
    hor.ti_wday = ReadCharI2C(ACK) ;  //A MODIFIER NON CONFORME
    hor.ti_month = ReadCharI2C(ACK)& 0b00011111;
    hor.ti_year = ReadCharI2C(NACK);
    CloseI2C();
}

void setTime_8563 (void){
    OpenI2C();
    WriteCharI2C(PCF8563_0_W);
    WriteCharI2C(0x02);
    WriteCharI2C(hor.ti_sec);
    WriteCharI2C(hor.ti_min);
    WriteCharI2C(hor.ti_hour);
    WriteCharI2C(hor.ti_day);
    WriteCharI2C(hor.ti_wday);
    WriteCharI2C(hor.ti_month);
    WriteCharI2C(hor.ti_year);
    CloseI2C();



}

/*    OpenI2C();
    WriteCharI2C(PCF8563_0_W);
    WriteCharI2C(0x00);
    WriteCharI2C(hor.ti_hour);
    WriteCharI2C(hor.ti_min);
    WriteCharI2C(hor.ti_day);
    WriteCharI2C(hor.ti_month);
    CloseI2C();
 */
