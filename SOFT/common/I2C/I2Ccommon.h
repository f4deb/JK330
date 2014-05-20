
#ifndef I2Ccommon_H
#define	I2Ccommon_H

#define ACK 1
#define NACK 0

void OpenI2C (void);
void WriteCharI2C (UINT8 data);
void CloseI2C (void);
unsigned char   ReadCharI2C (BOOL ACKNL);

#endif	/* I2Ccommon_H */