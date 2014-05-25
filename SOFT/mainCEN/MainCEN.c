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



//Definition I2C

#define BRG_VAL 0xc6	//100khz

static OutputStream pcoutputStream;

static OutputStream debugoutputStream;

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


// DEFINITION DES PORTS POUR L ENCODEUR HCTL-2032
#define DATA_2032 PORTE
#define RST_2032  PORTFbits.RF1
#define OE_2032   PORTFbits.RF0
#define XY_2032   PORTFbits.RF3
#define SEL1_2032 PORTGbits.RG6
#define SEL2_2032 PORTGbits.RG9
/////////////////////////////////////////////////



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
}

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
   

   appendString(outputStream, "Commande Moteurs :\r");
  
    initPwmForMotor();


    //PORTDbits.RD6 = 1 ;
    //PORTDbits.RD7 = 1 ;
    //OC1RS = (0x100);
    //OC2RS = (0x100);
    motor(0x10F0);


    TRISE = 0xFF;    // PORTE [0..7] en entree
    TRISFbits.TRISF0 = 0;
    TRISFbits.TRISF1 = 0;
    TRISFbits.TRISF3 = 0;
    TRISGbits.TRISG6 = 0;
    TRISGbits.TRISG9 = 0;

    hor.ti_hour=0x21;
    hor.ti_min=0x32;
    hor.ti_day=0x06;
    hor.ti_month=0x05;
    setTime();



    while (1) {
        int coder32 = 0;

        outputStream = &debugoutputStream;
        RST_2032 = 1;   //disable Reset
        //select Axis to Read
        XY_2032 = 0; // read x
        OE_2032 = 0;
        
        // EN1 = 1 EN2=0  Hardware Select, place JUMPER on P7 as EN2
        // MSB D4 read 8bits
        coder32=0;

        // D4 read 8bits
        SEL1_2032 = 0;
        SEL2_2032 = 1;
        coder32 = DATA_2032;

        // D3 read 8bits
        SEL1_2032 = 1;
        SEL2_2032 = 1;

        coder32 = (coder32 << 8) | DATA_2032;

        // D2 read 8bits
        SEL1_2032 = 0;
        SEL2_2032 = 0;
        
        coder32 = (coder32 << 8) | DATA_2032;
        
        // D1 read 8bits
        SEL1_2032 = 1;
        SEL2_2032 = 0;
        coder32 = (coder32 << 8 ) | DATA_2032;

        OE_2032 = 1;

        appendHex8(outputStream,coder32);
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