#include <plib.h>

#include "splitter.h"







// -> SERIAL PORT 2




void writeChar2(OutputStream* outputStream, char c) {
    putc(SERIAL_PORT_2, c);
}

void initSerialOutputStream2(OutputStream* outputStream) {
    outputStream->writeChar = writeChar2;

}
