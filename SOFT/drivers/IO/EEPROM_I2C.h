#ifndef EEPROM_I2C_H
#define	EEPROM_I2C_H

#define ST24C16_W 0xA0
#define ST24C16_R 0xA1

void eepromI2CWrite (int adress,int EepromI2CDataWrite);

int eepromI2CRead (int adress);

#endif

