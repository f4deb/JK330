/* 
 * File:   EEPROM_I2C.c
 * Author: f4deb
 *
 * Created on 5 ao？t 2014, 19:38
 */
#include <plib.h>
#include "../../common/I2C/I2Ccommon.h"
#include "EEPROM_I2C.h"
#include "../SOFT/device/../drivers/../common/delay/delay.h"

void eepromI2CWrite (int adress , int EepromI2CDataWrite){
    int i;
    OpenI2C();
    WriteCharI2C(ST24C16_W);
    WriteCharI2C(adress);
                WriteCharI2C( EepromI2CDataWrite);
      //          WriteCharI2C( 0x72);
      //          WriteCharI2C( 0x63);
      //          WriteCharI2C( 0x54);
      //          WriteCharI2C( 0x45);
      //          WriteCharI2C( 0x46);
//    CloseI2C();
//    OpenI2C();
    //for(i=0;i<5000;i++){
//        WriteCharI2C( 0x00);
//        WriteCharI2C( 0x00);
//                WriteCharI2C( 0x05);
//                WriteCharI2C( 0x05);
            //}
    CloseI2C();
}

int eepromI2CRead (int adress){
    int data=0;
    int data1=0;
    OpenI2C();
    WriteCharI2C(ST24C16_W);
    WriteCharI2C(adress);
    //CloseI2C();
    OpenI2C();
    WriteCharI2C(ST24C16_R);
    data = ReadCharI2C(ACK);
    data1 = ReadCharI2C(NACK);
    CloseI2C();
    return (data);
}
