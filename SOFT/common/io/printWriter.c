#include "printWriter.h"
//#include "outputStream.h"

//STRING

void append(OutputStream* outputStream, char c) {
	if (outputStream == 0) {
		return;
	}
    outputStream->writeChar(outputStream, c);
}


void appendSeparator(OutputStream* outputStream) {
    append(outputStream, '-');
}

void appendString(OutputStream* outputStream, const char* s) {
    while (*s != '\0') {
        append(outputStream, *s++);
    }
}

void appendCRLF(OutputStream* outputStream) {
    append(outputStream, CR);
    append(outputStream, LF);
}

void appendStringCRLF(OutputStream* outputStream, const char* s) {
    appendString(outputStream, s);
    appendCRLF(outputStream);
}

void appendCR(OutputStream* outputStream) {
    append(outputStream, CR);
}

void appendLF(OutputStream* outputStream) {
    append(outputStream, LF);
}

// HEXADECIMAL

void appendHex(OutputStream* outputStream, unsigned char c) {
    // Value between 0 and 9
    if (c < 10) {
        c += 48;
    } else {
        // Value between A and F
        // (65 - 10 + c)
        c += 55;
    }
    append(outputStream, c);
}

void internalAppendHex(OutputStream* outputStream, signed long value, int shiftMax) {
    int i;
    for (i = shiftMax; i >= 0; i -= 4) {
        appendHex(outputStream, (value >> i) & 0xF);
    }
}

void appendHex2(OutputStream* outputStream, unsigned char value) {
    internalAppendHex(outputStream, value, 4);
}

void appendHex4(OutputStream* outputStream, signed int value) {
    internalAppendHex(outputStream, value, 12);
}

void appendHex8(OutputStream* outputStream, signed int value) {
    internalAppendHex(outputStream, value, 28);
}

// DECIMAL CONVERSION

int appendDec(OutputStream* stream, signed long value) {
    char num[11]; // 2^31 plus sign
    int pos = 0;
    int nchars = 0;

    if (value < 0) {
        append(stream, '-');
        value = -value;
        nchars++;
    } else if (value == 0) {
        append(stream, '0');
        nchars++;
        return nchars;
    }

    while (value != 0) {
        char c = value % 10;
        value = value / 10;
        num[pos++] = c + '0';
    }

    if (pos == 0)
        num[pos++] = '0';

    while (--pos >= 0) {
        append(stream, num[pos]);
        nchars++;
    }

    return nchars;
}