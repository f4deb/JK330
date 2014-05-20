#include <plib.h>


#include "../../setup/clockConstants.h"

#include "serial.h"




//******************************************************
// void OpenUart ( const UARTx,long BaudRate)
// Overture  d'un port serie
// @param 	: UARTx : choix du port 
//				UART1,UART2,UART3,UART4,UART5,UART6
//			  BaudeRate : Vitesse du port serie
//				1200,2400,4800,9600,19200,38400,57600,115200
//				
//******************************************************
void OpenUart ( const UARTx,int BaudRate)
{
    UARTConfigure(UARTx, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UARTx, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UARTx, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UARTx, GetPeripheralClock(), BaudRate);
    UARTEnable(UARTx, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}

//******************************************************
// void CloseUart ( const UARTx)
// Fermeture  d'un port serie
// @param 	: UARTx : choix du port
//                  UART1,UART2,UART3,UART4,UART5,UART6
//
//******************************************************
void CloseUart ( const UARTx)
{
    UARTConfigure(UARTx, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UARTx, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UARTx, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UARTx, GetPeripheralClock(), 115200);
    UARTEnable(UARTx, UART_DISABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}

// *****************************************************************************
// void WriteCharUart(const UARTx, char data)
// Envoie sur le port serie le caract？re data
// @param	: UARTx : choix du port  
//					UART1,UART2,UART3,UART4,UART5,UART6
//			  data : caract？re
// *****************************************************************************
void WriteCharUart(const UARTx, char data	){
	
	while(!UARTTransmitterIsReady(UARTx));
	UARTSendDataByte(UARTx, data);   

    while(!UARTTransmissionHasCompleted(UARTx));
}




// *****************************************************************************
// UINT32 ReadCharUart (const UARTx)
// *****************************************************************************
UINT32 ReadCharUart(const UARTx)
{
    UINT8  data;

    while(!UARTReceivedDataIsAvailable(UARTx));
    data = UARTGetDataByte(UARTx);


    return (UINT32)data;
}
