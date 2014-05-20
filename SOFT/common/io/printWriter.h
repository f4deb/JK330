#ifndef PRINT_WRITER_H
#define PRINT_WRITER_H
#include "outputStream.h"

#define CR 13
#define LF 10

// STRINGS

/**
 * Append a char to the outputStream.
 */
void append(OutputStream* stream, char c);

/**
 * Append a string to the buffer.
 * @param s a standard C String (terminated by \0)
 */
void appendString(OutputStream* stream, const char* s);

// --- Management of hex conversion

/**
 * Sends an hexadecimal value to the serial output.
 */
void appendHex(OutputStream* outputStream, unsigned char c);


#endif