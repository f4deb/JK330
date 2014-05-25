#include <p32xxxx.h>
#include "pwmPic32.h"
#include "motorPwm.h"



void initPwmForMotor() {

    pwmInit(50); // Period en microsec

//    OC1RS = convPwmMotor(0); //duty cycle OC1
//    OC2RS = convPwmMotor(0); //duty cycle OC2

    motor(0x0000);
}

int calcMot (int mot){
    int data;

    data = mot * 0xFBF; // PR20 / MAX number (0x7F or 0x80) * 0x100
    data = data >> 8;
    return (data);
}

void motor(int mot){
    int mot1 = 0;
    int mot2 = 0;
    mot2 = mot>>8;
    mot1 = mot & 0x00FF;

    //MOTOR 1
    if (mot1 >= 0x80) {
        DIR_MOT1 = 0;
        mot1 = ~mot1 + 1 ; // complement a deux
        mot1 = mot1 & 0xFF;
    }
    else {
        DIR_MOT1 = 1;
    }
    // MOTOR 2
    if (mot2 >= 0x80) {
        DIR_MOT2 = 0;
        mot2 = ~mot2 + 1 ; // complement a deux
        mot2 = mot2 & 0xFF;
    }
    else {
        DIR_MOT2 = 1;
    }
    OC1RS = calcMot(mot1);
    OC2RS = calcMot(mot2);
}
