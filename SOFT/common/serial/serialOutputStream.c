#include <p32xxxx.h>
#include <plib.h>

#include "serialOutputStream.h"
#include "serial.h"


#include "../io/outputStream.h"


void OpenUart1(OutputStream* outputStream, int param1) {
    OpenUart(SERIAL_PORT_1, BAUDERATE);
}


void OpenUart2(OutputStream* outputStream, int param1) {
    OpenUart(SERIAL_PORT_2, BAUDERATE);
}


void OpenUart3(OutputStream* outputStream, int param1) {
    OpenUart(SERIAL_PORT_3, BAUDERATE);
}

void closeOutputStreamSerial1(OutputStream* outputStream) {
    CloseUart(SERIAL_PORT_1);
}

void closeOutputStreamSerial2(OutputStream* outputStream) {
    CloseUart(SERIAL_PORT_2);
}

void closeOutputStreamSerial3(OutputStream* outputStream) {
    CloseUart(SERIAL_PORT_3);
}

void writeChar1(OutputStream* outputStream, char c) {
    WriteCharUart(SERIAL_PORT_1, c);
}

void writeChar2(OutputStream* outputStream, char c) {
    WriteCharUart(SERIAL_PORT_2, c);
}

void writeChar3(OutputStream* outputStream, char c) {
    WriteCharUart(SERIAL_PORT_3, c);
}

void flushSerial(OutputStream* outputStream) {
    // don't do anything
}

void initSerialOutputStream1(OutputStream* outputStream) {
    outputStream->openOutputStream = OpenUart1;
    outputStream->closeOutputStream = closeOutputStreamSerial1;
    outputStream->writeChar = writeChar1;
    outputStream->flush = flushSerial;
}

void initSerialOutputStream2(OutputStream* outputStream) {
    outputStream->openOutputStream = OpenUart2;
    outputStream->closeOutputStream = closeOutputStreamSerial2;
    outputStream->writeChar = writeChar2;
    outputStream->flush = flushSerial;
}
void initSerialOutputStream3(OutputStream* outputStream) {
    outputStream->openOutputStream = OpenUart3;
    outputStream->closeOutputStream = closeOutputStreamSerial3;
    outputStream->writeChar = writeChar3;
    outputStream->flush = flushSerial;
}

// PUBLIC INTERFACE

void initSerialOutputStream(OutputStream* outputStream, int serialPortIndex) {
    switch (serialPortIndex){
        case 1 : {initSerialOutputStream1(outputStream);break;}
        case 2 : {initSerialOutputStream2(outputStream);break;}
        case 3 : {initSerialOutputStream3(outputStream);break;}
 //       case 4 : initSerialOutputStream4(outputStream);
 //       case 5 : initSerialOutputStream5(outputStream);
 //       case 6 : initSerialOutputStream6(outputStream);
    }
}






