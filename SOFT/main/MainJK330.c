#include <p32xxxx.h>
#include <string.h>
#include <plib.h>

#include "MainJK330.h"

#include "../common/delay/delay.h"

//#include "../common/io/outputStream.h"

#include "../common/serial/serial.h"

#include "../device/led/led.h"

#include "../drivers/lcd/lcd24064.h"

#include "../setup/clockConstants.h"


// definition des bits de configuration.
// Quartz externe, PLL x 20/2

#pragma config FNOSC    = PRIPLL        // Oscillator Selection
#pragma config FPLLIDIV = DIV_2         // PLL Input Divider (PIC32 Starter Kit: use divide by 2 only)
#pragma config FPLLMUL  = MUL_20        // PLL Multiplier
#pragma config FPLLODIV = DIV_1         // PLL Output Divider
#pragma config FPBDIV   = DIV_2         // Peripheral Clock divisor
#pragma config FWDTEN   = OFF           // Watchdog Timer
#pragma config WDTPS    = PS1           // Watchdog Timer Postscale
#pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
#pragma config OSCIOFNC = OFF           // CLKO Enable
#pragma config POSCMOD  = XT            // Primary Oscillator
#pragma config IESO     = OFF           // Internal/External Switch-over
#pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable
#pragma config CP       = OFF           // Code Protect
#pragma config BWP      = OFF           // Boot Flash Write Protect
#pragma config PWP      = OFF           // Program Flash Write Protect
#pragma config ICESEL   = ICS_PGx1      // ICE/ICD Comm Channel Select
#pragma config DEBUG    = ON           // Debugger Disabled for Starter Kit

// DEFINITION DES PORTS

#define SERIAL_PORT_PC		UART2
#define SERIAL_PORT_DEBUG 	UART3


// D？finition de la vitesse des ports series

#define BAUDERATE 115200


#define I2C_CLOCK_FREQ 				(100000)

//D？finition I2C

#define BRG_VAL 0xc6	//100khz



static OutputStream pcoutputStream;

// *****************************************************************************
// *****************************************************************************
// Section: Constant Data
// *****************************************************************************
// *****************************************************************************

static const char* HELLO_UART_PC = "JK330 with PIC32...on UART PC\r\n";
static const char* HELLO_UART_DEBUG = "JK330 with PIC32...on UART DEBUG\r\n";



/********************************************************************************************************************************
 *********************************************************************************************************************************
 *************************************************************** EN TEST *********************************************************
 *********************************************************************************************************************************
 ********************************************************************************************************************************/


// *****************************************************************************
// void SendDataBuffer(const UARTx, const char *buffer)
// Envoie sur le port serie la chaine de caract？re
// @param	: UARTx : choix du port  
//					UART1,UART2,UART3,UART4,UART5,UART6
//			  buffer : chaine de caract？re
// *****************************************************************************

void SendDataBuffer(const UARTx, const char *buffer)
 {
    while (*buffer != '\n') {
        WriteCharUart(UARTx, *buffer);
        buffer++;
    }
    while (!UARTTransmissionHasCompleted(UARTx));
}

void OpenUartDefaut(void) {
    OpenUart(SERIAL_PORT_PC, BAUDERATE);
}

void OpenUartDEBUGDefaut(OutputStream* outputStream, int param1) {
    OpenUart(SERIAL_PORT_DEBUG, BAUDERATE);
}

/********************************************************************************************************************************
 *********************************************************************************************************************************
 ************************************************ INITIALISATION CONFIGURATION ET MAIN *******************************************
 *********************************************************************************************************************************
 ********************************************************************************************************************************/

/*******************************************************************************
 *  init									       *
 * initialise les differents peripheriquesdu projet                             *
 * @prarm : none                                                                *
 * @return : none                                                               *
 *******************************************************************************/

void Init(void) {
    //	OpenUart(SERIAL_PORT_PC,BAUDERATE);

    //    OpenUart(SERIAL_PORT_DEBUG,BAUDERATE);

    void (*toto)();
    toto = OpenUartDefaut;

    toto();
    //	OpenUartDefaut();


    TestLed07(); // fais clignoter les leds de la fa？ade

    InitLCD();
}

/************************************************************
 * setup														*
 * configure les ports du PIC32 pour les fonctions du projet *
 * @param : none												*
 * @return : none											*
 ************************************************************/
void Setup() {


    OpenI2C1(I2C_ON, BRG_VAL); //Enable I2C channel
    SetupLCD();
}


//void initOutputStream(OutputStream *outputStream){
//	outputStream->openOutputStream = openOutputStream;
//}

void initSerialOutputStream1(OutputStream* outputStream) {
    outputStream->openOutputStream = OpenUartDEBUGDefaut;

}

/*
void initSerialOutputStream1(OutputStream* outputStream) {
    outputStream->openOutputStream = openOutputStreamSerial1;
//    outputStream->closeOutputStream = closeOutputStreamSerial1;
//    outputStream->writeChar = writeChar1;
//    outputStream->flush = flushSerial;
}
 */

int main(void) {

    UINT32 actualClock;

    Setup();
    Init();




    OutputStream* outputStream = &pcoutputStream;


    //	outputStream->address=1;
    //	initOutputStream(OutputStream *outputStream);
    //	initOutputStream(&pcoutputStream);

    initSerialOutputStream1(outputStream);
    outputStream->openOutputStream(outputStream,0);


    //	appendString(getOutputStreamLogger(ALWAYS), "Homologation:");

    SendDataBuffer(SERIAL_PORT_PC, HELLO_UART_PC);
    SendDataBuffer(SERIAL_PORT_DEBUG, HELLO_UART_DEBUG);

}



////////////////////////////// MEMO
/*
int main(void){
        Setup();
        Init();

         static	OutputStream pcoutputStream ;
	
        OutputStream *outputStream = &pcoutputStream;

        outputStream->x=0;

//	appendString(getOutputStreamLogger(ALWAYS), "Homologation:");
        SendDataBuffer (SERIAL_PORT_PC,HELLO_UART_PC);
        SendDataBuffer (SERIAL_PORT_DEBUG,HELLO_UART_DEBUG);
        }
 */

////////////////////////////// MEMO 
/*
int main(void){

        Setup();
        Init();


        OutputStream outputStream ;
	
        OutputStream *pointeur = &outputStream;


        pointeur->x=0;
        outputStream.x=1;
        outputStream.y=1;





//	appendString(getOutputStreamLogger(ALWAYS), "Homologation:");

        SendDataBuffer (SERIAL_PORT_PC,HELLO_UART_PC);
        SendDataBuffer (SERIAL_PORT_DEBUG,HELLO_UART_DEBUG);
	
        }
 */

////////////////////////////// MEMO 

/*
void Init(void) {
//	OpenUart(SERIAL_PORT_PC,BAUDERATE);
//	OpenUart(SERIAL_PORT_DEBUG,BAUDERATE);

        void (*toto)();
        toto = OpenUartDefaut;

        toto();
//	OpenUartDefaut();
//initLCD();
}
 */