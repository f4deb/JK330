#include <plib.h>

//#include "../drivers/lcd/lcdOutputStream.h"
#include "../common/io/outputStream.h"
#include "menu.h"

/*************************************************************
 * menu_P						     *								*
 * Affiche le menu Principal                                 *
 * @param  :                                                 *
 * @return : none					     *
 ************************************************************/
void menu_P(OutputStream* outputStream){
    ClrGraphLCD_24064();
    // parti superieur
    line (0,8,239,8);
    line (136,0,136,7);
    line (110,0,110,7);
    setCursorPosition(0,0);
    appendString(outputStream,"F4DEB");

    //parti inferieur
    line (0,54,239,54);
    line (40,55,40,63);
    line (80,55,80,63);
    line (120,55,120,63);
    line (160,55,160,63);
    line (200,55,200,63);

    setCursorPosition(7,1);
    appendString(outputStream,"RADIO MESURE SETUP  TEST");
    
}