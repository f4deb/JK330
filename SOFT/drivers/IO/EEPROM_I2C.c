/* 
 * File:   EEPROM_I2C.c
 * Author: f4deb
 *
 * Created on 5 ao？t 2014, 19:38
 */
#include <plib.h>
#include "../../common/I2C/I2Ccommon.h"
#include "EEPROM_I2C.h"

void eepromI2CWrite (int adress , int EepromI2CDataWrite){
    OpenI2C();
    WriteCharI2C(ST24C16_W);
    WriteCharI2C(adress);

    WriteCharI2C( EepromI2CDataWrite);

    CloseI2C();
}

int eepromI2CRead (int adress){
    int data=0;
    OpenI2C();
    WriteCharI2C(ST24C16_W);
    WriteCharI2C(adress);
    OpenI2C();
    WriteCharI2C(ST24C16_R);
    data = ReadCharI2C(NACK);
    CloseI2C();
    return (data);
}
