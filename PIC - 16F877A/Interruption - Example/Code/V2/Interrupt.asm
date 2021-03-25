
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Interrupt.c,20 :: 		void interrupt() {
;Interrupt.c,21 :: 		if (INTCON.RBIF) {
	BTFSS      INTCON+0, 0
	GOTO       L_interrupt0
;Interrupt.c,24 :: 		if(Button(&PORTB, 4, 100, 0)){
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt1
;Interrupt.c,25 :: 		PORTD.B7 = 0;
	BCF        PORTD+0, 7
;Interrupt.c,26 :: 		PORTD.B6 = 1;
	BSF        PORTD+0, 6
;Interrupt.c,27 :: 		PORTD.B5 = 0;       // enable only green
	BCF        PORTD+0, 5
;Interrupt.c,28 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt2:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt2
	DECFSZ     R12+0, 1
	GOTO       L_interrupt2
	DECFSZ     R11+0, 1
	GOTO       L_interrupt2
	NOP
	NOP
;Interrupt.c,29 :: 		}
L_interrupt1:
;Interrupt.c,30 :: 		temp = PORTB;       // read PORTB to clear mismatch
	MOVF       PORTB+0, 0
	MOVWF      _temp+0
;Interrupt.c,31 :: 		INTCON.RBIF = 0;    // reset interrupt flag
	BCF        INTCON+0, 0
;Interrupt.c,32 :: 		}
L_interrupt0:
;Interrupt.c,33 :: 		}
L_end_interrupt:
L__interrupt7:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Interrupt.c,35 :: 		void main() {
;Interrupt.c,36 :: 		PORTD.B7 = 0;
	BCF        PORTD+0, 7
;Interrupt.c,37 :: 		PORTD.B6 = 0;
	BCF        PORTD+0, 6
;Interrupt.c,38 :: 		PORTD.B5 = 0;   // low output
	BCF        PORTD+0, 5
;Interrupt.c,39 :: 		TRISD.B7 = 0;
	BCF        TRISD+0, 7
;Interrupt.c,40 :: 		TRISD.B6 = 0;
	BCF        TRISD+0, 6
;Interrupt.c,41 :: 		TRISD.B5 = 0;   // output pins
	BCF        TRISD+0, 5
;Interrupt.c,44 :: 		OPTION_REG.NOT_RBPU = 0; // PORTB pull-up res enabled
	BCF        OPTION_REG+0, 7
;Interrupt.c,45 :: 		TRISD.B4 = 0;              // RB4 as input pin
	BCF        TRISD+0, 4
;Interrupt.c,46 :: 		temp = PORTB;            // store RB4 input to clear mismatch
	MOVF       PORTB+0, 0
	MOVWF      _temp+0
;Interrupt.c,47 :: 		INTCON.RBIF = 0;         // interrupt flag
	BCF        INTCON+0, 0
;Interrupt.c,48 :: 		INTCON.RBIE = 1;         // interrupt enable
	BSF        INTCON+0, 3
;Interrupt.c,49 :: 		INTCON.GIE = 1;          // interrupt global enable
	BSF        INTCON+0, 7
;Interrupt.c,51 :: 		while (1) {
L_main3:
;Interrupt.c,52 :: 		PORTD = led[i];
	MOVF       _i+0, 0
	ADDLW      _led+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;Interrupt.c,53 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Interrupt.c,54 :: 		i = (i + 1) % 7;
	MOVF       _i+0, 0
	ADDLW      1
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVLW      7
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _i+0
;Interrupt.c,55 :: 		}
	GOTO       L_main3
;Interrupt.c,56 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
