/********************************************************************
Engineer        : Omar Elsobkey
Version         : 1.0
Date            : 23/3/2021
Microcontroller : PIC - 16F877A
Oscillator      : 4MHz
********************************************************************/

char keypadPort at PORTD;

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D7 at RB5_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D4 at RB2_bit;

sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D7_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB2_bit;

char input, operation = '_', out[7];
int i, num1 = 0, num2 = 0, index, mode = 0, pos = 0;
double result;
    
char get_char(char key, int mode) {

    if (mode == 0) {
        switch (key) {
            case 1:
                return '7';
            case 2:
                return '8';
            case 3:
                return '9';
            case 4:
                return '/';
            case 5:
                return '4';
            case 6:
                return '5';
            case 7:
                return '6';
            case 8:
                return '*';
            case 9:
                return '1';
            case 10:
                return '2';
            case 11:
                return '3';
            case 12:
                return '-';
            case 13:
                return 'q';
            case 14:
                return '0';
            case 15:
                return '=';
            case 16:
                return '+';
        }
    } else {
        switch (key) {
            case 1:
                return '7';
            case 2:
                return '8';
            case 3:
                return '9';
            case 4:
                return '%';
            case 5:
                return '4';
            case 6:
                return '5';
            case 7:
                return '6';
            case 8:
                return 's';
            case 9:
                return '1';
            case 10:
                return '2';
            case 11:
                return '3';
            case 12:
                return 'c';
            case 13:
                return 'q';
            case 14:
                return '0';
            case 15:
                return '=';
            case 16:
                return '!';
        }
    }
    return 0;
}

void calc(char operation) {
    switch (operation) {
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
            result = num1 / (double) num2;
            break;
        case '%':
            result = (num1 / (double) num2 - num1 / num2) * num2;
            break;
        case 's':
            result = pow(num1, 1 / 2.0);
            break;
        case 'c':
            result = pow(num1, 1 / 3.0);
            break;
        case '!':
            result = 1;
            i = 2;
            while (i <= num1) {
                result *= i;
                i++;
            }
            break;
    }
}

void main() {
    Keypad_Init();
    Lcd_Init();
    Lcd_Cmd(_LCD_CURSOR_OFF);
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Cmd(_LCD_RETURN_HOME);
    
    while (1) {
        mode == 0? Lcd_Out(1, 1, "/, x, -, +"): Lcd_Out(1, 1, "%, sqrt,cbrt, !");

        input = get_char(Keypad_Key_Press(), mode);
        
        if (input) {
            Lcd_Chr(2, pos + 1, input);
            pos++;
        }
        
        if (input == 'q') {
            mode++;
            mode %= 2;
            pos = 0;
            Lcd_Cmd(_LCD_CLEAR);
        } else if ('0' <= input && input <= '9') {
            if (operation == '_') {
                num1 = num1 * 10 + (input - '0');
            } else {
                num2 = num2 * 10 + (input - '0');
            }
        } else if (input == '=') {
            calc(operation);
            
            FloatToStr(result, out);

            Lcd_Out(2, 7, out);

            delay_ms(2000);
            Lcd_Cmd(_LCD_CLEAR);
            
            num1 = 0;
            num2 = 0;
            result = 0;
            pos = 0;
            operation = '_';
        } else if(input){
          operation = input;
        }
        Lcd_Cmd(_LCD_RETURN_HOME);
        delay_ms(300);
    }
}