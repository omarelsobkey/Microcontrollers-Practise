@echo off

avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o out.o "calculator.c"
avr-gcc -mmcu=atmega328p out.o -o out
avr-objcopy -O ihex -R .eeprom out out.hex

pause