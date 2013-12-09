#ifndef SERIAL_H
#define SERIAL_H

/** Define the index of serial port 1 */
#define SERIAL_PORT_1 1

/** Define the index of serial port 2 */
#define SERIAL_PORT_2 2

/** The default speed of the serial tranmission is fixed to 115200. */
// #define DEFAULT_SERIAL_SPEED 38400
#define DEFAULT_SERIAL_SPEED 115200



/**
 * Open the serial port with the specified transmission rate.
 * 8 data bits, 1 stop bit, no parity bits.
 * @param serialPortIndex the serialPortIndex we want to use
 * @param baudRate the number of bits per second
 */
void OpenUart ( const UARTx,int BaudRate);


void SendDataBuffer(const UARTx, const char *buffer);

UINT32 GetMenuChoice(const UARTx);
#endif