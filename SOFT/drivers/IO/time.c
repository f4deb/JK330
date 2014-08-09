
#include "../IO/../../common/io/outputStream.h"
#include "PCF8563.h"
#include "time.h"


/**
 * getTime						     
 * recupere l'heure et la date et l'affiche                  
 * @param  : outputStream = flux de sortie                   
 * @return : none					     
 **/
void getTime(OutputStream* outputStream ){
    // recupere l'huere et la date

    getTime_8563();
    
    // l'affiche sur le flux de sortie
    //setCursorPosition(2,20);
    appendHex2(outputStream, hor.ti_hour); //heure
    appendString(outputStream, ":");
    appendHex2(outputStream, hor.ti_min); //min
    appendString(outputStream, ":");
    appendHex2(outputStream, hor.ti_sec); //sec

    appendString(outputStream, " ");
    appendHex2(outputStream, hor.ti_day); //day

    append(outputStream, '/');
    appendHex2(outputStream, hor.ti_month); //month
    append(outputStream, '/');
    appendHex2(outputStream, hor.ti_year); //month
 
}

/**
 * setTime
 * Charge l'heure et la date
 * @param  : none
 * @return : none
 **/
void setTime(void){
    setTime_8563();
}