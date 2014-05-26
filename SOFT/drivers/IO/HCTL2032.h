/* 
 * File:   HCTL2032.h
 * Author: f4deb
 *
 * Created on 26 mai 2014, 19:00
 */

#ifndef HCTL2032_H
#define	HCTL2032_H

// DEFINITION DES PORTS POUR L ENCODEUR HCTL-2032
#define DATA_2032 PORTE
#define RST_2032  PORTFbits.RF1
#define OE_2032   PORTFbits.RF0
#define XY_2032   PORTFbits.RF3
#define SEL1_2032 PORTGbits.RG6
#define SEL2_2032 PORTGbits.RG9
/////////////////////////////////////////////////

#define CODER_X   0
#define CODER_Y   1

#endif	/* HCTL2032_H */

