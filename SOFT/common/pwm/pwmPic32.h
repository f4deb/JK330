/* 
 * File:   pwmPic32.h
 * Author: f4deb
 *
 * Created on 25 avril 2014, 21:35
 */

#ifndef PWMPIC32_H
#define	PWMPIC32_H

#define DIR_MOT1 PORTDbits.RD6
#define DIR_MOT2 PORTDbits.RD7



// COMMON

/**
 * The number of pwm.
 */
#define PWM_COUNT 4

/**
 * Init the PIC configuration to manage pwm.
 */
void pwmInit(int T);

#endif	/* PWMPIC32_H */

