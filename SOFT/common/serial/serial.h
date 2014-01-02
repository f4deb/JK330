#ifndef SERIAL_H
#define SERIAL_H

void OpenUart ( const UARTx,int BaudRate);


void WriteCharUart(const UARTx, char data);

UINT32 ReadCharUart(const UARTx);

#endif