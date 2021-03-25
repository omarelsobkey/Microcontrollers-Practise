/********************************************************************
Engineer		: OmarElsobkey
Version			: 1.0
Date	 		: 6/2/2021
Microcontroller : ATMEGA328P
Oscillator		: 8MHz
********************************************************************/

#include <avr/io.h>
#include <util/delay.h>
#include "LCD.h"
#include "keypad (v1).h"

int main(void) {
    lcd_init_4d();
    keypad_init();

    char input, sympol = ' ', out[10];
    int num1 = 0, num2 = 0, result, index;
    while (1) {

        input = keypad_get_char();

        lcd_write_character_4d(input);
        if ('0' <= input && input <= '9') {
            if (sympol == ' ') {
                num1 = num1 * 10 + (input - '0');
            } else {
                num2 = num2 * 10 + (input - '0');
            }
        } else {
            if (input == '=') {
                switch (sympol) {
                    case '+':
                        result = num1 + num2;
                        break;
                    case '-':
                        result = num1 - num2;
                        break;
                    case '*':
                        result = num1 * num2;
                        break;
                    case '/':
                        result = num1 / num2;
                        break;
                }

                index = 0;
                do {
                    out[index] = '0' + result % 10;
                    index++;
                    result /= 10;
                } while(result >0);

                int i = index - 1;
                while (i >= 0) {
                    lcd_write_character_4d(out[i]);
                    i--;
                }

                num1 = 0;
                num2 = 0;
                result = 0;
            } else {
                sympol = input;
            }
        }
        _delay_ms(10);
    }

    return 0;
}
