#include <p32xxxx.h>
#include <plib.h>


#include "lcd24064.h"
#include "lcdOutputStream.h"

#include "../../common/io/outputStream.h"

void openLCD(OutputStream* outputStream, int param1) {
    InitLCD_24064();
}

void closeLCD(OutputStream* outputStream) {
    //Nothing todo
}

void writeCharLCD(OutputStream* outputStream, char c) {
    writeCharLCD_24064(c);
}

void flushLCD(OutputStream* outputStream) {
    // don't do anything
}


void initLcdOutputStream(OutputStream* outputStream) {
//    OutputStream outputStreamAsSctruct = *outputStream;
//  outputStreamAsStruct.openOutputStream openLCD;

    outputStream->openOutputStream = openLCD;
    outputStream->closeOutputStream = closeLCD;
    outputStream->writeChar = writeCharLCD;
    outputStream->flush = flushLCD;
}