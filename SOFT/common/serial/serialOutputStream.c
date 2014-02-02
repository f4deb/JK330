#include "serialOutputStream.h"



#include "../../common/serial/serial.h"




// -> SERIAL PORT 1

void OpenOutputStreamSerial(serialPort, baudeRate) {
    OpenUart(serialPort,baudeRate);
}



void InitSerialOutputStream(serialPort, baudeRate) {
   OpenUart(serialPort,baudeRate);
}
