#include <p32xxxx.h>
#include <string.h>
#include <plib.h>

#include "MainJK330.h"

#include "../common/delay/delay.h"

#include "../common/io/outputStream.h"
#include "../common/io/printWriter.h"

#include "../common/pwm/pwmPic32.h"

#include "../common/serial/serial.h"
#include "../common/serial/serialOutputStream.h"

#include "../device/led/led.h"

#include "../drivers/IO/MCP9804.h"

#include "../drivers/IO/PCF8573.h"
#include "../drivers/IO/time.h"

#include "../drivers/lcd/lcd24064.h"
#include "../drivers/lcd/lcdOutputStream.h"
#include "../drivers/lcd/lcdProvider_24064.h"



#include "../menu/menu.h"

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

#define SERIAL_PORT_DEBUG       1   //NUMERO DU PORT SERIE
#define SERIAL_PORT_PC		2   //NUMERO DU PORT SERIE
#define SERIAL_PORT_DATA        3   //NUMERO DU PORT SERIE



//Definition I2C

#define BRG_VAL 0xc6	//100khz

static OutputStream pcoutputStream;

static OutputStream debugoutputStream;

static OutputStream dataoutputStream;

OutputStream* outputStream;

// *****************************************************************************
// *****************************************************************************
// Section: Constant Data
// *****************************************************************************
// *****************************************************************************

// Variable Capteur de temperature MCP9804
int BCD1, BCD2, BCD3, BCD4;
int BCD10;

#define ACK 1
#define NACK 0

int Temperature;


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

        //Initialise port serie debug
    outputStream = &debugoutputStream;
    //initSerialOutputStream1(outputStream);
    initSerialOutputStream(outputStream, SERIAL_PORT_DEBUG);
    outputStream->openOutputStream(outputStream, 0);

        //Initialise port serie PC
    outputStream = &pcoutputStream;
    //initSerialOutputStream2(outputStream);
    initSerialOutputStream(outputStream, SERIAL_PORT_PC);
    outputStream->openOutputStream(outputStream, 0);

            //Initialise port serie PC
    outputStream = &dataoutputStream;
    //initSerialOutputStream2(outputStream);
    initSerialOutputStream(outputStream, SERIAL_PORT_DATA);
    outputStream->openOutputStream(outputStream, 0);
}

        //Initialise port serie data


/************************************************************
 * setup														*
 * configure les ports du PIC32 pour les fonctions du projet *
 * @param : none												*
 * @return : none											
 ************************************************************/
void Setup() {

    //Active CONNEXION I2C1
    OpenI2C1(I2C_ON, BRG_VAL); //Enable I2C channel
    //   I2C1CONbits.ACKDT=1;
    //   I2C1CONbits.ACKEN=0;

}



int main(void) {
    //    UINT32 actualClock;
    Setup();
    Init();
   outputStream = &pcoutputStream;
   appendString(outputStream, "JK330 with PIC32...on UART PC\r");
   outputStream = &debugoutputStream;
   appendString(outputStream, "JK330 with PIC32...on UART DEBUG\r");
   outputStream = &dataoutputStream;
   appendString(outputStream, "JK330 with PIC32...on UART DATA\r");
   

   appendString(outputStream, "Commande Moteurs :\r");
  
    initPwmForMotor();

    motor(0x1010);

    initCoder();


    hor.ti_hour=0x21;
    hor.ti_min=0x32;
    hor.ti_day=0x06;
    hor.ti_month=0x05;
    setTime();
    


    while (1) {


        outputStream = &debugoutputStream;

        appendString(outputStream,"Codeur X : ");
        appendHex8(outputStream,coder(0));
        append(outputStream,' ');
        appendString(outputStream,"Codeur Y : ");
        appendHex8(outputStream,coder(1));
        appendCR(outputStream);
        
        outputStream = &pcoutputStream;
        getTime(outputStream);
        appendCR(outputStream);

        delaymSec(100);
    }
}




























////////////////////////////// MEMO.


/*
   outputStream = &debugoutputStream;


   appendString (outputStream,"TOTO\0");
   append(outputStream,'J');

 */

/*    while (1) {

        Temperature = ReadTempAmbMCP9804();
        BCD10 = (Temperature / 10) ;
        Temperature = (Temperature - (BCD10*10));
        BCD1 = Temperature + '0' ;
        BCD10 += '0';
        WriteCharUart(SERIAL_PORT_DEBUG, BCD10);
        WriteCharUart(SERIAL_PORT_DEBUG, BCD1 );
        WriteCharUart(SERIAL_PORT_DEBUG, CR );
        delaymSec(500);
    }
 */




//	outputStream->address=1;
//	initOutputStream(OutputStream *outputStream);
//	initOutputStream(&pcoutputStream);



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

/*
    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x01);
    OpenI2C();
    WriteCharI2C(0x31);
    TempAmbMSB = ReadCharI2C(ACK);

    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x02);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x03);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x04);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x05);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x06);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x07);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();
 */