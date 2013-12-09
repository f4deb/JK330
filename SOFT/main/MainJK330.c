#include <p32xxxx.h>
#include <string.h>
#include <plib.h>

#include "../common/delay/delay.h"
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

#define PORT_PC		UART2
#define PORT_DEBUG 	UART3


// Définition de la vitesse des ports series

#define BAUDERATE 115200


 

// *****************************************************************************
// *****************************************************************************
// Section: Constant Data
// *****************************************************************************
// *****************************************************************************

static const char* HELLO_UART_PC="JK330 with PIC32...on UART PC\r\n";
static const char* HELLO_UART_DEBUG="JK330 with PIC32...on UART DEBUG\r\n";







/********************************************************************************************************************************
*********************************************************************************************************************************
************************************************ INITIALISATION CONFIGURATION ET MAIN *******************************************
*********************************************************************************************************************************
********************************************************************************************************************************/

/****************************************************
* init												*
* initialise les differents peripheriquesdu projet	*
* @prarm : none										*
* @return : none									*
****************************************************/

void init(void) {
	OpenUart(PORT_PC,BAUDERATE);
	OpenUart(PORT_DEBUG,BAUDERATE);
	//initLCD();
}

/************************************************************
* setup														*
* configure les ports du PIC32 pour les fonctions du projet *
* @param : none												*
* @return : none											*
************************************************************/	
void setup (){
//	setupLCD();
}
int main(void){

	OpenUart(PORT_PC,BAUDERATE);
	OpenUart(PORT_DEBUG,BAUDERATE);


//IMPORTANT POUR ACTIVER LE RX UART5. INFO TROUVEE SUR LE NET
	PORTSetPinsDigitalIn(IOPORT_B,BIT_8);  



	SendDataBuffer(PORT_PC,HELLO_UART_PC);
	SendDataBuffer(PORT_DEBUG,HELLO_UART_DEBUG);
	
	}



