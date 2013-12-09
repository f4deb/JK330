#ifndef CLOCK_CONSTANTS_H
#define CLOCK_CONSTANTS_H

/** oscillator frequency in Hz. */
#define FOSC 80000000

/** PLL multiplier, x1  x4  x8  x16. */
#define FPLLMUL 20

/** PLL diviser */
#define FPLLIDIV 2

/** instruction cycle frequency. */
#define FCY ((FOSC * FPLLMUL) / FPLLIDIV  / 4)


// calcul de la fr�quence du bus
#define	GetSystemClock() 			(FOSC)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())

#endif
