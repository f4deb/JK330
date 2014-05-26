#include <p32xxxx.h>
#include "HCTL2032.h"

void initCoder(void){
    TRISE = 0xFF;    // PORTE [0..7] en entree
    TRISFbits.TRISF0 = 0;
    TRISFbits.TRISF1 = 0;
    TRISFbits.TRISF3 = 0;
    TRISGbits.TRISG6 = 0;
    TRISGbits.TRISG9 = 0;
}

int coder (int coderSelect){
    int coder32 = 0;


    RST_2032 = 1;   //disable Reset

    //select Axis to Read
    XY_2032 = coderSelect; //

    // ENABLE OUTPUT
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

    //DISABLE OUTPUT
    OE_2032 = 1;
    return (coder32);

}