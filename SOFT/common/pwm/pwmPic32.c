#include <p32xxxx.h>

#include <plib.h>

#include "pwmPic32.h"

#include "../../setup/clockConstants.h"

void pwmInit(int T) {
    // Port en sortie pour commander la direction des moteurs
   TRISDbits.TRISD6 = 0;
   TRISDbits.TRISD7 = 0;

    //int T = 50;    // T = 1 / frequence de decoupage puissance moteur (microsec)
    int PR20 = T * (FOSC / 2000000);  // pour 20khz => PR20 = 7D0
    OpenOC1( OC_ON | OC_TIMER2_SRC | OC_PWM_FAULT_PIN_DISABLE, 0, 0);
    OpenOC2( OC_ON | OC_TIMER2_SRC | OC_PWM_FAULT_PIN_DISABLE, 0, 0);
    OpenTimer2( T2_ON | T2_PS_1_1 | T2_SOURCE_INT , PR20);
    SetDCOC1PWM(0x0000); // 0 % duty cycle
    OC2RS = (0x0000); // 0 % duty cycle
}
