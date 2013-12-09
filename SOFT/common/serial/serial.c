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

// *****************************************************************************
// void SendDataBuffer(const UARTx, const char *buffer)
// Envoie sur le port serie la chaine de caractère
// @param	: UARTx : choix du port  
//					UART1,UART2,UART3,UART4,UART5,UART6
//			  buffer : chaine de caractère
// *****************************************************************************
void SendDataBuffer(const UARTx, const char *buffer)
{
    while(*buffer != '\n')
    {
        while(!UARTTransmitterIsReady(UARTx));
        UARTSendDataByte(UARTx, *buffer);
        buffer++; 
    }
    while(!UARTTransmissionHasCompleted(UARTx));
}




// *****************************************************************************
// UINT32 GetMenuChoice(void)
// *****************************************************************************
UINT32 GetMenuChoice(const UARTx)
{
    UINT8  menu_item;

    while(!UARTReceivedDataIsAvailable(UARTx));
    menu_item = UARTGetDataByte(UARTx);


    return (UINT32)menu_item;
}
