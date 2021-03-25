/********************************************************************
Engineer        : OmarElsobkey
Version         : 1.0
Date            : 21/3/2021
Microcontroller : PIC-16F877A
Oscillator      : 4MHz
********************************************************************/

sbit LED at portd.b7;
const DELAY = 1000;

void main() {
     trisd.b7 = 0;
     LED = 1;

     while(1) {
        LED = ~LED;
        delay_ms(DELAY);
    }
}