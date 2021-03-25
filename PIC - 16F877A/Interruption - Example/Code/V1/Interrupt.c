/****************************************
Engineer        : Omar Elsobkey
Version         : 1.0
Date            : 21/6/2021
Microcontroller : PIC - 16F877A
Oscillator      : 4MHz
****************************************/

unsigned short int led[] = {0b10000000,
                            0b01000000,
                            0b00100000,
                            0b11000000,
                            0b01100000,
                            0b10100000,
                            0b11100000};

unsigned short int i = 0;
unsigned short int temp = 0; // variable to use as PORTB dump

void interrupt() {
    delay_ms(100);          // pb debounce
    if (INTCON.RBIF) {
        PORTD.B7 = 0;
        PORTD.B6 = 1;
        PORTD.B5 = 0;       // enable only green
        delay_ms(2000);
        temp = PORTB;       // read PORTB to clear mismatch
        INTCON.RBIF = 0;    // reset interrupt flag
    }
}

void main() {
    PORTD.B7 = 0;
    PORTD.B6 = 0;
    PORTD.B5 = 0;   // low output
    TRISD.B7 = 0;
    TRISD.B6 = 0;
    TRISD.B5 = 0;   // output pins

    // PORTB for interruption
    OPTION_REG.NOT_RBPU = 0; // PORTB pull-up res enabled
    TRISD.B4 = 0;              // RB4 as input pin
    temp = PORTB;            // store RB4 input to clear mismatch
    INTCON.RBIF = 0;         // interrupt flag
    INTCON.RBIE = 1;         // interrupt enable
    INTCON.GIE = 1;          // interrupt global enable

    while (1) {
        PORTD = led[i];
        delay_ms(500);
        i = (i + 1) % 7;
    }
}