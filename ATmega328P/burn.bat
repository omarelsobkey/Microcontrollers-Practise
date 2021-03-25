@echo off

avrdude -F -V -c arduino -p ATMEGA328P -P COM* -b 115200 -U flash:w:out.hex

pause
