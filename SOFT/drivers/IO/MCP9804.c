#include <p32xxxx.h>
#include <plib.h>

#include "MCP9804.h"

#include "../../common/I2C/I2Ccommon.h"
#include "../SOFT/device/../common/io/outputStream.h"
#include "../IO/../lcd/lcdOutputStream.h"

#define CONF_REG_MCP9804        1
#define TEMP_UPPER_REG_MCP9804  2
#define TEMP_LOWER_REG_MCP9804  3
#define TEMP_CRITIC_REG_MCP9804 4
#define TEMP_AMB_REG_MCP9804    5

// Variable Capteur de temperature MCP9804
int BCD1;
int BCD10;

int Temperature;

/********************************************************
 * setRegMCP9804                                        *
 * Envoie la valeur "MSB" et "LSB" au registre "reg"   	*
 * @param : reg : adresse du registre   		*
 *          MSB : Poid fort transfere dans le registre  *
 *          LSB : Poid faible transfere dans le registre*
 * @return : none 					*
 ********************************************************/
void setRegMCP9804 (UINT8 reg, UINT8 MSB , UINT8 LSB){
    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(reg);
    WriteCharI2C(MSB);
    WriteCharI2C(LSB);
    CloseI2C();
}

/********************************************************
 * setConfRegMCP980                                     *
 * Envoie la valeur "MSB" et "LSB" au registre de       *
 * configuration                                        *
 * @param : MSB : Poid fort transfere dans le registre  *
 *          LSB : Poid faible transfere dans le registre*
 * @return : none 					*
 ********************************************************/
void setConfRegMCP9804 ( UINT8 MSB , UINT8 LSB) {
    setRegMCP9804 (CONF_REG_MCP9804, MSB , LSB);
}

/********************************************************
 * setTempUpperRegMCP9804                               *
 * Envoie la valeur "MSB" et "LSB" au registre de       *
 * Temperature haute                                    *
 * @param : MSB : Poid fort transfere dans le registre  *
 *          LSB : Poid faible transfere dans le registre*
 * @return : none 					*
 ********************************************************/
void setTempUpperRegMCP9804 ( UINT8 MSB , UINT8 LSB){
    setRegMCP9804 (TEMP_UPPER_REG_MCP9804, MSB , LSB);
}

/********************************************************
 * setTempLowerRegMCP9804                               *
 * Envoie la valeur "MSB" et "LSB" au registre de       *
 * Temperature basse                                    *
 * @param : MSB : Poid fort transfere dans le registre  *
 *          LSB : Poid faible transfere dans le registre*
 * @return : none 					*
 ********************************************************/
void setTempLowerRegMCP9804 ( UINT8 MSB , UINT8 LSB){
    setRegMCP9804 (TEMP_LOWER_REG_MCP9804, MSB , LSB);
}

/********************************************************
 * setTempCriticRegMCP9804                              *
 * Envoie la valeur "MSB" et "LSB" au registre de       *
 * Temperature critique                                 *
 * @param : MSB : Poid fort transfere dans le registre  *
 *          LSB : Poid faible transfere dans le registre*
 * @return : none 					*
 ********************************************************/
void setTempCriticRegMCP9804 ( UINT8 MSB , UINT8 LSB){
    setRegMCP9804 (TEMP_CRITIC_REG_MCP9804, MSB , LSB);
}

/****************************************************************
 * initRegMCP9804                                               *
 * Envoie parametre de reglage du capteur                       *
 * Temperature critique                                         *
 * @param : CONFMSB,CONFLSB : registre config                   *
 *          TUPMSB , TUPLSB : registre temperature haute        *
 *          TLOWMSB , TLOWLSB : registre temperature basse      *
 *          TCRITMSB , TCRITLSB :registre temperature critique  *
 * @return : none                                               *
 ***************************************************************/
void initRegMCP9804 (UINT8 CONFMSB , UINT8 CONFLSB , UINT8 TUPMSB , UINT8 TUPLSB,UINT8 TLOWMSB , UINT8 TLOWLSB,
                     UINT8 TCRITMSB , UINT8 TCRITLSB){
    setConfRegMCP9804(CONFMSB,CONFLSB);
    setTempUpperRegMCP9804 ( TUPMSB , TUPLSB );
    setTempLowerRegMCP9804 ( TLOWMSB , TLOWLSB );
    setTempCriticRegMCP9804 ( TCRITMSB , TCRITLSB );
}

/**
 * ReadTempAmbMCP9804
 * Lit la temperature du capteur
 * @param :  none
 * @return : int temperature                                  
 **/
int ReadTempAmbMCP9804 (void){
    int TempAmbMSB;
    int TempAmbLSB;
    int Temperature;

    OpenI2C();
    WriteCharI2C(0x30);
    WriteCharI2C(0x05);
    OpenI2C();
    WriteCharI2C(0x31);//AckI2C1();
    TempAmbMSB = MasterReadI2C1();AckI2C1();IdleI2C1();//AckI2C1();
    TempAmbLSB = MasterReadI2C1();NotAckI2C1();IdleI2C1();
    CloseI2C();

    //Convert the temperature data
    //First Check flag bits
    if ((TempAmbMSB & 0x80) == 0x80){
    //TA $B!)(B TCRIT
    }
    if ((TempAmbMSB & 0x40) == 0x40){
    //TA > TUPPER
    }
    if ((TempAmbMSB & 0x20) == 0x20){
    //TA < TLOWER
    }
    TempAmbMSB = TempAmbMSB & 0x1F; //Clear flag bits
    if ((TempAmbMSB & 0x10) == 0x10){ //TA < 0$B!k(BC
    TempAmbMSB = TempAmbMSB & 0x0F;
    //Clear SIGN
    Temperature = 256 - (TempAmbMSB * 16 + TempAmbLSB / 16);
    }else
    //TA  $B!)(B 0$B!k(BC
    Temperature = (TempAmbMSB * 16 + TempAmbLSB / 16);
    //Temperature = Ambient Temperature ($B!k(BC)
    return(Temperature);
}
