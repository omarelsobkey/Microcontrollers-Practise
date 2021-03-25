
_main:

;LED_Flasher.c,12 :: 		void main() {
;LED_Flasher.c,13 :: 		trisd.b7 = 0;
	BCF        TRISD+0, 7
;LED_Flasher.c,14 :: 		LED = 1;
	BSF        PORTD+0, 7
;LED_Flasher.c,16 :: 		while(1) {
L_main0:
;LED_Flasher.c,17 :: 		LED = ~LED;
	MOVLW      128
	XORWF      PORTD+0, 1
;LED_Flasher.c,18 :: 		delay_ms(DELAY);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LED_Flasher.c,19 :: 		}
	GOTO       L_main0
;LED_Flasher.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
