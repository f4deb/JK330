//ATTENTION DUREE DE 1.5us environ pour PIC32 80Mhz
void delayUs(void) {
}

void delay100us(unsigned int uSecond) {
    unsigned int i;
    while (uSecond != 0) {
        i = 164;
        while (i > 0) {
            --i;
        }
        --uSecond;
    }
}

void delaymSec(unsigned int mSecond) {
    unsigned int i;
    while (mSecond != 0) {
        i = 1664;
        while (i > 0) {

            --i;
        }
        --mSecond;
    }
}


