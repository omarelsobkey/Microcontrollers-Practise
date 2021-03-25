#line 1 "C:/Users/DELL/Desktop/Electronics/a - Microcontrollers Codes/PIC - 16F877A/Interruption - Example/Code/Interrupt.c"
#line 9 "C:/Users/DELL/Desktop/Electronics/a - Microcontrollers Codes/PIC - 16F877A/Interruption - Example/Code/Interrupt.c"
unsigned short int led[] = {0b10000000,
 0b01000000,
 0b00100000,
 0b11000000,
 0b01100000,
 0b10100000,
 0b11100000};

unsigned short int i = 0;
unsigned short int temp = 0;

void interrupt() {
 delay_ms(100);
 if (INTCON.RBIF) {
 PORTD.B7 = 0;
 PORTD.B6 = 1;
 PORTD.B5 = 0;
 delay_ms(2000);
 temp = PORTB;
 INTCON.RBIF = 0;
 }
}

void main() {
 PORTD.B7 = 0;
 PORTD.B6 = 0;
 PORTD.B5 = 0;
 TRISD.B7 = 0;
 TRISD.B6 = 0;
 TRISD.B5 = 0;


 OPTION_REG.NOT_RBPU = 0;
 TRISD.B4 = 0;
 temp = PORTB;
 INTCON.RBIF = 0;
 INTCON.RBIE = 1;
 INTCON.GIE = 1;

 while (1) {
 PORTD = led[i];
 delay_ms(500);
 i = (i + 1) % 7;
 }
}
