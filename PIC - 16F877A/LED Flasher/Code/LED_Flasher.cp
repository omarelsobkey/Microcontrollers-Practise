#line 1 "C:/Users/DELL/Desktop/Electronics/a - Microcontrollers Codes/PIC - 16F877A/Code/LED_Flasher.c"
#line 9 "C:/Users/DELL/Desktop/Electronics/a - Microcontrollers Codes/PIC - 16F877A/Code/LED_Flasher.c"
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
