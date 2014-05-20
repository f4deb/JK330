/* 
 * File:   PCF8573.h
 * Author: f4deb
 *
 * Created on 8 avril 2014, 23:56
 */

#ifndef PCF8573_H
#define	PCF8573_H

#define PCF8573_0_W 0xD0
#define PCF8573_0_R 0xD1

struct Horloge {
    int ti_hour;
    int ti_min;
    int ti_sec;
    int ti_day;
    int ti_month;
    int ti_year;
}hor;

void getTime_8573 (void);

#endif	/* PCF8573_H */

