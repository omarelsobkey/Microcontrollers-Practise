/********************************************************************
Engineer 		: Omar Elsobkey
Version         : 2.0
Date            : 23/3/2021
Microcontroller : ATMEGA328P
********************************************************************/

#ifndef KEYPAD
#define KEYPAD

#include <avr/io.h>
#include <util/delay.h>

void keypad_init() {
    DDRD = 0x0f;
    PORTD = 0x00;
}

char keypad_get_char(int mode) {

    char input = ' ';

    if (mode == 0) {
        while (input == ' ') {
            // r1
            PORTD = 0x01;
            if (PIND & (0x10)) input = '7';
            else if (PIND & (0x20)) input = '8';
            else if (PIND & (0x40)) input = '9';
            else if (PIND & (0x80)) input = '/';

            // r2
            PORTD = 0x02;
            if (PIND & (0x10)) input = '4';
            else if (PIND & (0x20)) input = '5';
            else if (PIND & (0x40)) input = '6';
            else if (PIND & (0x80)) input = '*';

            // r3
            PORTD = 0x04;
            if (PIND & (0x10)) input = '1';
            else if (PIND & (0x20)) input = '2';
            else if (PIND & (0x40)) input = '3';
            else if (PIND & (0x80)) input = '-';

            // r4
            PORTD = 0x08;
            if (PIND & (0x10)) input = 'q';
            else if (PIND & (0x20)) input = '0';
            else if (PIND & (0x40)) input = '=';
            else if (PIND & (0x80)) input = '+';

            _delay_ms(10);
        }
    } else {
        while (input == ' ') {
            // r1
            PORTD = 0x01;
            if (PIND & (0x10)) input = '7';
            else if (PIND & (0x20)) input = '8';
            else if (PIND & (0x40)) input = '9';
            else if (PIND & (0x80)) input = '%';

            // r2
            PORTD = 0x02;
            if (PIND & (0x10)) input = '4';
            else if (PIND & (0x20)) input = '5';
            else if (PIND & (0x40)) input = '6';
            else if (PIND & (0x80)) input = 's';

            // r3
            PORTD = 0x04;
            if (PIND & (0x10)) input = '1';
            else if (PIND & (0x20)) input = '2';
            else if (PIND & (0x40)) input = '3';
            else if (PIND & (0x80)) input = 'c';

            // r4
            PORTD = 0x08;
            if (PIND & (0x10)) input = 'q';
            else if (PIND & (0x20)) input = '0';
            else if (PIND & (0x40)) input = '=';
            else if (PIND & (0x80)) input = '!';

            _delay_ms(10);
        }
    }
    return input;
}

#endif