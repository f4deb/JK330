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
    
    
    initPwmForMotor();
    initCoder();
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

void waitC (OutputStream* outputStream){
    appendString(outputStream, "Appuyer sur la touche <c>");
    while (ReadCharUart(UART1) != 'c'){
        //appendString(outputStream, "Appuyer sur la touche <c>");

    }
            appendCR(outputStream);
}


int main(void) {
    //    UINT32 actualClock;
    Setup();
    Init();
//   outputStream = &pcoutputStream;
//   appendString(outputStream, "TEST MOTOR BOARD with PIC32...on UART PC\r");
    outputStream = &debugoutputStream;
    appendString(outputStream, "TEST MOTOR BOARD with PIC32...on UART DEBUG\r\r");
//   outputStream = &dataoutputStream;
//   appendString(outputStream, "TEST MOTOR BOARD with PIC32...on UART DATA\r");
    
    appendString(outputStream, "Debut de la sequence de test\r");
    
    hor.ti_hour=0x21;
    hor.ti_min=0x32;
    hor.ti_day=0x06;
    hor.ti_month=0x05;
    setTime();


int  i = 0;
       char car = 1;












// TEST UART1
    appendString(outputStream, "TEST UART1\r");
       
    waitC(outputStream);

    appendString(outputStream, "** TEST UART1 OK **\r");
    
    appendString(outputStream, "Connectez le cable de test entre UART2 et UART3\r");
    appendString(outputStream, "TEST UART2 et UART3\r");
    waitC(outputStream);

//TEST UART2 et 3

    //DEBUG --> DATA
    outputStream = &pcoutputStream;
    append(outputStream,'2');
    if (ReadCharUart(UART3) == '2'){
    //DATA --> DEBUG
        outputStream = &dataoutputStream;
        append(outputStream,'3');
        outputStream = &debugoutputStream;
        if (ReadCharUart(UART2) == '3'){
            appendString(outputStream,"** TEST UART2 et UART3 OK **\r");
        }
        else{
            appendString(outputStream,"******** TEST UART2 et UART3 FAIL *********\r");
        }
    }


// TEST MOTOR1
    outputStream = &debugoutputStream;
    appendString(outputStream,"TEST MOTOR 1\r");
    appendString(outputStream,"Motors STOP ... Verifier que motor1 et motor2 sont arretes\r");
    waitC(outputStream);


    appendString(outputStream,"Verifier  l'acceleration du moteur 1 \r");
    appendString(outputStream,"Appuyer sur la touche <c> pour continuer le test MOTOR1\r");
    while (car != 'c'){

        motor(i);
        i++;
        if  (i>=0x80){
            i=0;
        }
        delaymSec(100);

        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"Changement du sens de rotation du motor1\r");
    appendString(outputStream,"Appuuyer sur la touche <m> pour continuer le test MOTOR1\r");
    i = 0;
    while (car != 'm'){
        motor(i);
        i--;
                i= i & 0x00FF;

        if  (i == 0x7F){
            i=0;
        }
        delaymSec(100);

        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"** Motor1 OK **\r");

// TEST MOTOR2
   // outputStream = &debugoutputStream;
    appendString(outputStream,"TEST MOTOR 2\r");
    appendString(outputStream,"Motors STOP ... Verifier que motor1 et motor2 sont arretes\r");
    motor(0x0000);
    waitC(outputStream);
    appendString(outputStream,"Verifier  l'acceleration du moteur 2 \r");
    appendString(outputStream,"Appuyer sur la touche <c> pour continuer le test MOTOR2\r");
    while (car != 'c'){

        motor(i<<8);
        i++;
        if  (i>=0x80){
            i=0;
        }
        delaymSec(100);

        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"Changement du sens de rotation du motor2\r");
    appendString(outputStream,"Appuuyer sur la touche <m> pour continuer le test MOTOR2\r");
    i = 0;
    while (car != 'm'){
        motor(i);
        i=i-0100;
                i= i & 0xFF00;

        if  (i == 0x7F00){
            i=0;
        }
        delaymSec(100);

        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"** Motor2 OK **\r");
    motor(0x0000);

    //TEST MOTOR1 et MOTOR2 ensemble
    appendString(outputStream,"TEST MOTOR1 ET MOTOR2 ENSEMBLE\r");
    appendString(outputStream,"Appuuyer sur la touche c> pour continuer le test MOTOR2\r");

        unsigned int l=0xFFFF;
    unsigned int j= 0x0101;
    unsigned int k=1;
//    char car = 1;
    while (car != 'd'){

        if (k == 0) {
            l=l+j;
        }
        if (k == 1) {
            l=l-j;
        }
        appendHex4(outputStream,l);
        appendCR(outputStream);
        motor(l);
        if ((l == 0xFFFF) &&(k == 0)) {      //Correction overflow
            l= 0x0000;
        }
        if ((l == 0x0000) &&(k == 1)) {      //Correction overflow
            l= 0xFFFF;
        }
        if (l == 0x7F7F){
            k = 1;      // decremente les deux moteurs
        }

        if (l == 0x8080){
            k=0;     // incremente les deux moteurs
        }
        delaymSec(100);


        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"** Motor11 ET MOTOR2 OK **\r");
    motor(0x0000);


    //TEST CODER1 et CODER2


    while (car != 'c') {


 //       outputStream = &debugoutputStream;

        appendString(outputStream,"TEST Codeur X : ");
        appendHex8(outputStream,coder(0));
        append(outputStream,' ');
        appendString(outputStream,"TEST Codeur Y : ");
        appendHex8(outputStream,coder(1));
        appendCR(outputStream);
        
 //       outputStream = &pcoutputStream;
        appendString(outputStream,"Appuyer sur <c> pour continuer ");
//        getTime(outputStream);
//        appendCR(outputStream);

        delaymSec(500);
        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendCR(outputStream);
    appendString(outputStream,"** TEST CODER X et CODER Y OK **");
    appendCR(outputStream);
// TEST I2C

    while (car != 'i') {

        appendString(outputStream,"Appuyer sur <c> pour continuer: TEST I2C   :");
        getTime(outputStream);
        appendCR(outputStream);
        delaymSec(500);

        if (UARTReceivedDataIsAvailable(UART1)){
            car = ReadCharUart(UART1);
        }
    }
    appendString(outputStream,"** TEST I2C OK **");
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