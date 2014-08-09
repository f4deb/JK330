#ifndef EEPROM_I2C_H
#define	EEPROM_I2C_H

void eepromI2CWrite (int adress,UINT32 EepromI2CDataWrite);

UINT32 eepromI2CRead (int adress);

#endif

