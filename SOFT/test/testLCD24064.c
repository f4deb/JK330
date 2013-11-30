#include <p32xxxx.h>
#include <string.h>
#include <plib.h>

#include "../common/delay/delay.h"


// definition des bits de configuration.
// Quartz externe, PLL x 10

#pragma config FNOSC    = PRIPLL        // Oscillator Selection
#pragma config FPLLIDIV = DIV_12         // PLL Input Divider (PIC32 Starter Kit: use divide by 2 only)
//#pragma config FPLLMUL  = MUL_20        // PLL Multiplier
#pragma config FPLLMUL  = MUL_15        // PLL Multiplier
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


// calcul de la fréquence du bus
#define	GetSystemClock() 			(80000000ul)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())

// Définition de la vitesse du port serie
#define BAUDERATE 115200


		
// DEFINITION DES PORTS
#define UARTTEST UART3 
#define SERIAL_PORT_DEBUG	UART3
#define SERIAL_PORT_PC		UART2



//////////////////////
// Afficheur graphique 

#define bus_LCD	PORTE
#define wr_LCD	PORTFbits.RF0
#define rd_LCD	PORTFbits.RF1
#define ce_LCD	PORTFbits.RF3
#define cd_LCD 	PORTDbits.RD11


#define ad_base_graph 0x0200
#define ad_fin_graph 0x0A00

#define data_lcd cslcd
#define com_lcd  cslcd+1

#define lcd_nblign 8
#define lcd_nbcol  40

#define txhome	0x40
#define txarea	0x41
#define grhome	0x42
#define grarea	0x43
#define offset	0x22
#define adpset	0x24
#define awron	0xb0
#define awroff	0xb2

// data afficheur graphique

int pos_x;
int pos_y;
 

// *****************************************************************************
// *****************************************************************************
// Section: Constant Data
// *****************************************************************************
// *****************************************************************************
const char mainMenu[] =
{
    "Welcome to PIC32 UART Peripheral Test Program!\r"
	"Do you want to continue ? ( (y)es / (n)o )\r\n"
};

static const char* myHelloStr1="PIC32...on UART1\r\n";
static const char* myHelloStr2="PIC32...on UART2\r\n";
static const char* myHelloStr3="PIC32...on UART3\r\n";
static const char* myHelloStr4="PIC32...on UART4\r\n";
static const char* myHelloStr5="PIC32...on UART5\r\n";
static const char* myHelloStr6="PIC32...on UART6\r\n";
static const char* goodbye="\r\rTest UART terminé\r\n";

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


//******************************************************
// void OpenUart ( const UARTx,long BaudRate)
// Overture  d'un port serie
// @param 	: UARTx : choix du port 
//				UART1,UART2,UART3,UART4,UART5,UART6
//			  BaudeRate : Vitesse du port serie
//				1200,2400,4800,9600,19200,38400,57600,115200
//				
//******************************************************
void OpenUart ( const UARTx,long BaudRate)
{
	UARTConfigure(UARTx, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UARTx, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UARTx, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UARTx, GetPeripheralClock(), BAUDERATE);
    UARTEnable(UARTx, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}


// *****************************************************************************
// UINT32 GetMenuChoice(void)
// *****************************************************************************
UINT32 GetMenuChoice(void)
{
    UINT8  menu_item;

    while(!UARTReceivedDataIsAvailable(UARTTEST));
    menu_item = UARTGetDataByte(UARTTEST);


    return (UINT32)menu_item;
}


//***************************************************************************************************************
//***************************************************************************************************************
//************************************* SOUS PROGRAMME AFFICHEUR GRAPHIQUE **************************************
//***************************************************************************************************************
//***************************************************************************************************************

/********************************************************
* busyLCD												*
* attend que l'afficheur soit disponible				*
* @param : none											*
* @return : none 										*
********************************************************/

void busyLCD (void) {
	int status = 0x00;
	TRISE = 0xFF; 				// BUS LCD en entrée
	
	wr_LCD = 1;
	rd_LCD = 0;		// LCD en lecture
	cd_LCD = 1;		// LCD en commande



	while (status  !=0xFF) {
		ce_LCD = 0; 	// active le LCD
		status = bus_LCD;	//recupere l etat du LCD
		status=0b11111100 | status;
		ce_LCD = 1; 	// desactive le LCD
	
	}
	rd_LCD = 1;		// LCD en lecture
	TRISE = 0; 				// BUS LCD en sortie
}

/********************************************************
* commandWriteLCD 										*
* Envoie d'une commande au LCD							*
* @param  : data			Commande Ã  envoyer			*
* @return : none
*********************************************************/


void commandWriteLCD (int data2){

	busyLCD();

	bus_LCD = data2;
	cd_LCD = 1;		// LCD en commande+
	rd_LCD = 1;		// LCD en ecriture






	wr_LCD = 0;
	ce_LCD = 0; 	// active le LCD


	delay100us(1);

	ce_LCD = 1; 	// desactive le LCD
	wr_LCD = 1;



}

/********************************************************
* dataWriteLCD 											*
* Envoie d'une data au LCD								*
* @param  : data			data Ã  envoyer				*
* @return : none										*
*********************************************************/


void dataWriteLCD (int data1){

	busyLCD();

	bus_LCD = data1;
	cd_LCD = 0;		// LCD en data
	rd_LCD = 1;		// LCD en ecriture


		

	wr_LCD = 0;
	ce_LCD = 0; 	// active le LCD

	delay100us(1);


	ce_LCD = 1; 	// desactive le LCD
	wr_LCD = 1;

	delay100us(1);
}

void clrTexteLCD(void){

}

void clrGraphLCD(void){
}





/************************************
* initLCD							*
* initialise l afficheur			*
* @prarm : none						*
* @return : none					*
************************************/

void initLCD (void) {
	int i;
	pos_x = 0;
	pos_y = 0;         


	// adresse de base text area = 0x0000
	dataWriteLCD (0x00);	//low adresse
	dataWriteLCD (0x00);	//high adresse
	commandWriteLCD (txhome);	
	
	//fixe adresse graphique à 0x0200
	dataWriteLCD(0x00);
	dataWriteLCD(0x02);
	commandWriteLCD(grhome);




	//fixe nombre de colonne texte a 40 (0x28)
	dataWriteLCD(0x28);
	dataWriteLCD(0x00);
	commandWriteLCD(txarea);



	//Fixe nombre de colonne texte en mode graphique a 40 (0x28)
	dataWriteLCD(0x28);
	dataWriteLCD(0x00);
	commandWriteLCD(grarea);

	// LCD mode "OR"
	commandWriteLCD(0x84);

	// fixe zone de charactere personnel
	dataWriteLCD(0x03);  //03 Adresse CG-RAM = 1C00h ( Valeur decaler de 3 fois ï¿½gauche)
	dataWriteLCD(0x01);
	commandWriteLCD(offset);

	//nombre de ligne pour le curseur
	commandWriteLCD(0xA4);


	//Active afficheur

	commandWriteLCD(0x94);

	



	dataWriteLCD(0x00);

	dataWriteLCD(0x00);
	commandWriteLCD(adpset);





	commandWriteLCD(awron);

	for (i = 0 ; i <=0x01;i++){
	dataWriteLCD('-');

	}
	commandWriteLCD(awroff);

	dataWriteLCD(0x00);

	dataWriteLCD(0x02);
	commandWriteLCD(adpset);





	commandWriteLCD(awron);

	for (i = 0 ; i <=0x01;i++){
	dataWriteLCD('-');

	}
	commandWriteLCD(awroff);



	dataWriteLCD(0x00);

	dataWriteLCD(0x02);
	commandWriteLCD(adpset);

	commandWriteLCD(0x94);
	delaymSec(100);
	commandWriteLCD(0x98);
	delaymSec(100);
	commandWriteLCD(0x94);
	delaymSec(100);
	commandWriteLCD(0x94);
	delaymSec(100);

	dataWriteLCD(0x00);

	dataWriteLCD(0x00);
	commandWriteLCD(0x42);


	clrTexteLCD();
	clrGraphLCD();

	
}


/**************************
* setupLCD
* configure les ports du PIC32 pour les fonctions du LCD
* @param : none
* @return : none
**************************/
void setupLCD (){

		TRISE = 0; 				// BUS LCD en sortie

		TRISFbits.TRISF0  = 0;	//WR en sortie
		TRISFbits.TRISF1  = 0;	//RD en sortie
		TRISFbits.TRISF3  = 0;	//CE en sortie
			
		TRISDbits.TRISD11 = 0;	//CD en sortie

		wr_LCD=1;
		rd_LCD=1;
		cd_LCD=1;
		ce_LCD=1;
	
}

/****************************************************
* init												*
* initialise les differents peripheriquesdu projet	*
* @prarm : none										*
* @return : none									*
****************************************************/

void init(void) {
	initLCD();
		OpenUart(UART2,BAUDERATE);
		OpenUart(UART3,BAUDERATE);
}

/************************************************************
* setup														*
* configure les ports du PIC32 pour les fonctions du projet *
* @param : none												*
* @return : none											*
************************************************************/	
void setup (){
	setupLCD();
}

int main(void)
{
 	UINT32  menu_choice;

	delaymSec(100);
	setup();
	init ();
	
	menu_choice = 'y';

	while (1){

		if (menu_choice=='n'){

			SendDataBuffer(UARTTEST,goodbye);
			
			return(0);
		}
		if (menu_choice=='y'){

		menu_choice = 'n';

		SendDataBuffer(UART2,myHelloStr2);
	    SendDataBuffer(UART2,mainMenu);		


		SendDataBuffer(UART3,myHelloStr3);
		SendDataBuffer(UART3,mainMenu);

		menu_choice = GetMenuChoice();
		}
	}
	return (0);
}
