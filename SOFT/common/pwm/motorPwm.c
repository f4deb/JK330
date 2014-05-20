#include "pwmPic32.h"
#include "motorPwm.h"

void initPwmForMotor() {

    pwmInit(50); // Period en microsec

//    OC1RS = convPwmMotor(0); //duty cycle OC1
//    OC2RS = convPwmMotor(0); //duty cycle OC2
}
