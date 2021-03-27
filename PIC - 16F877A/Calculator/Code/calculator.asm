
_get_char:

;calculator.c,29 :: 		char get_char(char key, int mode) {
;calculator.c,31 :: 		if (mode == 0) {
	MOVLW      0
	XORWF      FARG_get_char_mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_char70
	MOVLW      0
	XORWF      FARG_get_char_mode+0, 0
L__get_char70:
	BTFSS      STATUS+0, 2
	GOTO       L_get_char0
;calculator.c,32 :: 		switch (key) {
	GOTO       L_get_char1
;calculator.c,33 :: 		case 1:
L_get_char3:
;calculator.c,34 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,35 :: 		case 2:
L_get_char4:
;calculator.c,36 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,37 :: 		case 3:
L_get_char5:
;calculator.c,38 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,39 :: 		case 4:
L_get_char6:
;calculator.c,40 :: 		return '/';
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,41 :: 		case 5:
L_get_char7:
;calculator.c,42 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,43 :: 		case 6:
L_get_char8:
;calculator.c,44 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,45 :: 		case 7:
L_get_char9:
;calculator.c,46 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,47 :: 		case 8:
L_get_char10:
;calculator.c,48 :: 		return '*';
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,49 :: 		case 9:
L_get_char11:
;calculator.c,50 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,51 :: 		case 10:
L_get_char12:
;calculator.c,52 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,53 :: 		case 11:
L_get_char13:
;calculator.c,54 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,55 :: 		case 12:
L_get_char14:
;calculator.c,56 :: 		return '-';
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,57 :: 		case 13:
L_get_char15:
;calculator.c,58 :: 		return 'q';
	MOVLW      113
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,59 :: 		case 14:
L_get_char16:
;calculator.c,60 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,61 :: 		case 15:
L_get_char17:
;calculator.c,62 :: 		return '=';
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,63 :: 		case 16:
L_get_char18:
;calculator.c,64 :: 		return '+';
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,65 :: 		}
L_get_char1:
	MOVF       FARG_get_char_key+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_get_char3
	MOVF       FARG_get_char_key+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_get_char4
	MOVF       FARG_get_char_key+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_get_char5
	MOVF       FARG_get_char_key+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_get_char6
	MOVF       FARG_get_char_key+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_get_char7
	MOVF       FARG_get_char_key+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_get_char8
	MOVF       FARG_get_char_key+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_get_char9
	MOVF       FARG_get_char_key+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_get_char10
	MOVF       FARG_get_char_key+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_get_char11
	MOVF       FARG_get_char_key+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_get_char12
	MOVF       FARG_get_char_key+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_get_char13
	MOVF       FARG_get_char_key+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_get_char14
	MOVF       FARG_get_char_key+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_get_char15
	MOVF       FARG_get_char_key+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_get_char16
	MOVF       FARG_get_char_key+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_get_char17
	MOVF       FARG_get_char_key+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_get_char18
;calculator.c,66 :: 		} else {
	GOTO       L_get_char19
L_get_char0:
;calculator.c,67 :: 		switch (key) {
	GOTO       L_get_char20
;calculator.c,68 :: 		case 1:
L_get_char22:
;calculator.c,69 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,70 :: 		case 2:
L_get_char23:
;calculator.c,71 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,72 :: 		case 3:
L_get_char24:
;calculator.c,73 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,74 :: 		case 4:
L_get_char25:
;calculator.c,75 :: 		return '%';
	MOVLW      37
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,76 :: 		case 5:
L_get_char26:
;calculator.c,77 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,78 :: 		case 6:
L_get_char27:
;calculator.c,79 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,80 :: 		case 7:
L_get_char28:
;calculator.c,81 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,82 :: 		case 8:
L_get_char29:
;calculator.c,83 :: 		return 's';
	MOVLW      115
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,84 :: 		case 9:
L_get_char30:
;calculator.c,85 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,86 :: 		case 10:
L_get_char31:
;calculator.c,87 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,88 :: 		case 11:
L_get_char32:
;calculator.c,89 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,90 :: 		case 12:
L_get_char33:
;calculator.c,91 :: 		return 'c';
	MOVLW      99
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,92 :: 		case 13:
L_get_char34:
;calculator.c,93 :: 		return 'q';
	MOVLW      113
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,94 :: 		case 14:
L_get_char35:
;calculator.c,95 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,96 :: 		case 15:
L_get_char36:
;calculator.c,97 :: 		return '=';
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,98 :: 		case 16:
L_get_char37:
;calculator.c,99 :: 		return '!';
	MOVLW      33
	MOVWF      R0+0
	GOTO       L_end_get_char
;calculator.c,100 :: 		}
L_get_char20:
	MOVF       FARG_get_char_key+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_get_char22
	MOVF       FARG_get_char_key+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_get_char23
	MOVF       FARG_get_char_key+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_get_char24
	MOVF       FARG_get_char_key+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_get_char25
	MOVF       FARG_get_char_key+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_get_char26
	MOVF       FARG_get_char_key+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_get_char27
	MOVF       FARG_get_char_key+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_get_char28
	MOVF       FARG_get_char_key+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_get_char29
	MOVF       FARG_get_char_key+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_get_char30
	MOVF       FARG_get_char_key+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_get_char31
	MOVF       FARG_get_char_key+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_get_char32
	MOVF       FARG_get_char_key+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_get_char33
	MOVF       FARG_get_char_key+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_get_char34
	MOVF       FARG_get_char_key+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_get_char35
	MOVF       FARG_get_char_key+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_get_char36
	MOVF       FARG_get_char_key+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_get_char37
;calculator.c,101 :: 		}
L_get_char19:
;calculator.c,102 :: 		return 0;
	CLRF       R0+0
;calculator.c,103 :: 		}
L_end_get_char:
	RETURN
; end of _get_char

_calc:

;calculator.c,105 :: 		void calc(char operation) {
;calculator.c,106 :: 		switch (operation) {
	GOTO       L_calc38
;calculator.c,107 :: 		case '+':
L_calc40:
;calculator.c,108 :: 		result = num1 + num2;
	MOVF       _num2+0, 0
	ADDWF      _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _num2+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,109 :: 		break;
	GOTO       L_calc39
;calculator.c,110 :: 		case '-':
L_calc41:
;calculator.c,111 :: 		result = num1 - num2;
	MOVF       _num2+0, 0
	SUBWF      _num1+0, 0
	MOVWF      R0+0
	MOVF       _num2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _num1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,112 :: 		break;
	GOTO       L_calc39
;calculator.c,113 :: 		case '*':
L_calc42:
;calculator.c,114 :: 		result = num1 * num2;
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	MOVF       _num2+0, 0
	MOVWF      R4+0
	MOVF       _num2+1, 0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,115 :: 		break;
	GOTO       L_calc39
;calculator.c,116 :: 		case '/':
L_calc43:
;calculator.c,117 :: 		result = num1 / (double) num2;
	MOVF       _num2+0, 0
	MOVWF      R0+0
	MOVF       _num2+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calc+0
	MOVF       R0+1, 0
	MOVWF      FLOC__calc+1
	MOVF       R0+2, 0
	MOVWF      FLOC__calc+2
	MOVF       R0+3, 0
	MOVWF      FLOC__calc+3
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       FLOC__calc+0, 0
	MOVWF      R4+0
	MOVF       FLOC__calc+1, 0
	MOVWF      R4+1
	MOVF       FLOC__calc+2, 0
	MOVWF      R4+2
	MOVF       FLOC__calc+3, 0
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,118 :: 		break;
	GOTO       L_calc39
;calculator.c,119 :: 		case '%':
L_calc44:
;calculator.c,120 :: 		result = (num1 / (double) num2 - num1 / num2) * num2;
	MOVF       _num2+0, 0
	MOVWF      R0+0
	MOVF       _num2+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calc+4
	MOVF       R0+1, 0
	MOVWF      FLOC__calc+5
	MOVF       R0+2, 0
	MOVWF      FLOC__calc+6
	MOVF       R0+3, 0
	MOVWF      FLOC__calc+7
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       FLOC__calc+4, 0
	MOVWF      R4+0
	MOVF       FLOC__calc+5, 0
	MOVWF      R4+1
	MOVF       FLOC__calc+6, 0
	MOVWF      R4+2
	MOVF       FLOC__calc+7, 0
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calc+0
	MOVF       R0+1, 0
	MOVWF      FLOC__calc+1
	MOVF       R0+2, 0
	MOVWF      FLOC__calc+2
	MOVF       R0+3, 0
	MOVWF      FLOC__calc+3
	MOVF       _num2+0, 0
	MOVWF      R4+0
	MOVF       _num2+1, 0
	MOVWF      R4+1
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__calc+0, 0
	MOVWF      R0+0
	MOVF       FLOC__calc+1, 0
	MOVWF      R0+1
	MOVF       FLOC__calc+2, 0
	MOVWF      R0+2
	MOVF       FLOC__calc+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       FLOC__calc+4, 0
	MOVWF      R4+0
	MOVF       FLOC__calc+5, 0
	MOVWF      R4+1
	MOVF       FLOC__calc+6, 0
	MOVWF      R4+2
	MOVF       FLOC__calc+7, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,121 :: 		break;
	GOTO       L_calc39
;calculator.c,122 :: 		case 's':
L_calc45:
;calculator.c,123 :: 		result = pow(num1, 1 / 2.0);
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FARG_pow_x+0
	MOVF       R0+1, 0
	MOVWF      FARG_pow_x+1
	MOVF       R0+2, 0
	MOVWF      FARG_pow_x+2
	MOVF       R0+3, 0
	MOVWF      FARG_pow_x+3
	MOVLW      0
	MOVWF      FARG_pow_y+0
	MOVLW      0
	MOVWF      FARG_pow_y+1
	MOVLW      0
	MOVWF      FARG_pow_y+2
	MOVLW      126
	MOVWF      FARG_pow_y+3
	CALL       _pow+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,124 :: 		break;
	GOTO       L_calc39
;calculator.c,125 :: 		case 'c':
L_calc46:
;calculator.c,126 :: 		result = pow(num1, 1 / 3.0);
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FARG_pow_x+0
	MOVF       R0+1, 0
	MOVWF      FARG_pow_x+1
	MOVF       R0+2, 0
	MOVWF      FARG_pow_x+2
	MOVF       R0+3, 0
	MOVWF      FARG_pow_x+3
	MOVLW      171
	MOVWF      FARG_pow_y+0
	MOVLW      170
	MOVWF      FARG_pow_y+1
	MOVLW      42
	MOVWF      FARG_pow_y+2
	MOVLW      125
	MOVWF      FARG_pow_y+3
	CALL       _pow+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,127 :: 		break;
	GOTO       L_calc39
;calculator.c,128 :: 		case '!':
L_calc47:
;calculator.c,129 :: 		result = 1;
	MOVLW      0
	MOVWF      _result+0
	MOVLW      0
	MOVWF      _result+1
	MOVLW      0
	MOVWF      _result+2
	MOVLW      127
	MOVWF      _result+3
;calculator.c,130 :: 		i = 2;
	MOVLW      2
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
;calculator.c,131 :: 		while (i <= num1) {
L_calc48:
	MOVLW      128
	XORWF      _num1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calc72
	MOVF       _i+0, 0
	SUBWF      _num1+0, 0
L__calc72:
	BTFSS      STATUS+0, 0
	GOTO       L_calc49
;calculator.c,132 :: 		result *= i;
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       _result+0, 0
	MOVWF      R4+0
	MOVF       _result+1, 0
	MOVWF      R4+1
	MOVF       _result+2, 0
	MOVWF      R4+2
	MOVF       _result+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _result+0
	MOVF       R0+1, 0
	MOVWF      _result+1
	MOVF       R0+2, 0
	MOVWF      _result+2
	MOVF       R0+3, 0
	MOVWF      _result+3
;calculator.c,133 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;calculator.c,134 :: 		}
	GOTO       L_calc48
L_calc49:
;calculator.c,135 :: 		break;
	GOTO       L_calc39
;calculator.c,136 :: 		}
L_calc38:
	MOVF       FARG_calc_operation+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L_calc40
	MOVF       FARG_calc_operation+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L_calc41
	MOVF       FARG_calc_operation+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L_calc42
	MOVF       FARG_calc_operation+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L_calc43
	MOVF       FARG_calc_operation+0, 0
	XORLW      37
	BTFSC      STATUS+0, 2
	GOTO       L_calc44
	MOVF       FARG_calc_operation+0, 0
	XORLW      115
	BTFSC      STATUS+0, 2
	GOTO       L_calc45
	MOVF       FARG_calc_operation+0, 0
	XORLW      99
	BTFSC      STATUS+0, 2
	GOTO       L_calc46
	MOVF       FARG_calc_operation+0, 0
	XORLW      33
	BTFSC      STATUS+0, 2
	GOTO       L_calc47
L_calc39:
;calculator.c,137 :: 		}
L_end_calc:
	RETURN
; end of _calc

_main:

;calculator.c,139 :: 		void main() {
;calculator.c,140 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;calculator.c,141 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;calculator.c,142 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,143 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,144 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,146 :: 		while (1) {
L_main50:
;calculator.c,147 :: 		mode == 0? Lcd_Out(1, 1, "/, x, -, +"): Lcd_Out(1, 1, "%, sqrt,cbrt, !");
	MOVLW      0
	XORWF      _mode+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main74
	MOVLW      0
	XORWF      _mode+0, 0
L__main74:
	BTFSS      STATUS+0, 2
	GOTO       L_main52
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main53
L_main52:
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main53:
;calculator.c,149 :: 		input = get_char(Keypad_Key_Press(), mode);
	CALL       _Keypad_Key_Press+0
	MOVF       R0+0, 0
	MOVWF      FARG_get_char_key+0
	MOVF       _mode+0, 0
	MOVWF      FARG_get_char_mode+0
	MOVF       _mode+1, 0
	MOVWF      FARG_get_char_mode+1
	CALL       _get_char+0
	MOVF       R0+0, 0
	MOVWF      _input+0
;calculator.c,151 :: 		if (input) {
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main54
;calculator.c,152 :: 		Lcd_Chr(2, pos + 1, input);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _pos+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _input+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;calculator.c,153 :: 		pos++;
	INCF       _pos+0, 1
	BTFSC      STATUS+0, 2
	INCF       _pos+1, 1
;calculator.c,154 :: 		}
L_main54:
;calculator.c,156 :: 		if (input == 'q') {
	MOVF       _input+0, 0
	XORLW      113
	BTFSS      STATUS+0, 2
	GOTO       L_main55
;calculator.c,157 :: 		mode++;
	INCF       _mode+0, 1
	BTFSC      STATUS+0, 2
	INCF       _mode+1, 1
;calculator.c,158 :: 		mode %= 2;
	MOVLW      2
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _mode+0, 0
	MOVWF      R0+0
	MOVF       _mode+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _mode+0
	MOVF       R0+1, 0
	MOVWF      _mode+1
;calculator.c,159 :: 		pos = 0;
	CLRF       _pos+0
	CLRF       _pos+1
;calculator.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,161 :: 		} else if ('0' <= input && input <= '9') {
	GOTO       L_main56
L_main55:
	MOVLW      48
	SUBWF      _input+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main59
	MOVF       _input+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L_main59
L__main68:
;calculator.c,162 :: 		if (operation == '_') {
	MOVF       _operation+0, 0
	XORLW      95
	BTFSS      STATUS+0, 2
	GOTO       L_main60
;calculator.c,163 :: 		num1 = num1 * 10 + (input - '0');
	MOVF       _num1+0, 0
	MOVWF      R0+0
	MOVF       _num1+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      48
	SUBWF      _input+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSS      STATUS+0, 0
	DECF       R2+1, 1
	MOVF       R2+0, 0
	ADDWF      R0+0, 0
	MOVWF      _num1+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R2+1, 0
	MOVWF      _num1+1
;calculator.c,164 :: 		} else {
	GOTO       L_main61
L_main60:
;calculator.c,165 :: 		num2 = num2 * 10 + (input - '0');
	MOVF       _num2+0, 0
	MOVWF      R0+0
	MOVF       _num2+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      48
	SUBWF      _input+0, 0
	MOVWF      R2+0
	CLRF       R2+1
	BTFSS      STATUS+0, 0
	DECF       R2+1, 1
	MOVF       R2+0, 0
	ADDWF      R0+0, 0
	MOVWF      _num2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R2+1, 0
	MOVWF      _num2+1
;calculator.c,166 :: 		}
L_main61:
;calculator.c,167 :: 		} else if (input == '=') {
	GOTO       L_main62
L_main59:
	MOVF       _input+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_main63
;calculator.c,168 :: 		calc(operation);
	MOVF       _operation+0, 0
	MOVWF      FARG_calc_operation+0
	CALL       _calc+0
;calculator.c,170 :: 		FloatToStr(result, out);
	MOVF       _result+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       _result+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       _result+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       _result+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _out+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;calculator.c,172 :: 		Lcd_Out(2, 7, out);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _out+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;calculator.c,174 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main64:
	DECFSZ     R13+0, 1
	GOTO       L_main64
	DECFSZ     R12+0, 1
	GOTO       L_main64
	DECFSZ     R11+0, 1
	GOTO       L_main64
	NOP
	NOP
;calculator.c,175 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,177 :: 		num1 = 0;
	CLRF       _num1+0
	CLRF       _num1+1
;calculator.c,178 :: 		num2 = 0;
	CLRF       _num2+0
	CLRF       _num2+1
;calculator.c,179 :: 		result = 0;
	CLRF       _result+0
	CLRF       _result+1
	CLRF       _result+2
	CLRF       _result+3
;calculator.c,180 :: 		pos = 0;
	CLRF       _pos+0
	CLRF       _pos+1
;calculator.c,181 :: 		operation = '_';
	MOVLW      95
	MOVWF      _operation+0
;calculator.c,182 :: 		} else if(input){
	GOTO       L_main65
L_main63:
	MOVF       _input+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main66
;calculator.c,183 :: 		operation = input;
	MOVF       _input+0, 0
	MOVWF      _operation+0
;calculator.c,184 :: 		}
L_main66:
L_main65:
L_main62:
L_main56:
;calculator.c,185 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;calculator.c,186 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main67:
	DECFSZ     R13+0, 1
	GOTO       L_main67
	DECFSZ     R12+0, 1
	GOTO       L_main67
	DECFSZ     R11+0, 1
	GOTO       L_main67
;calculator.c,187 :: 		}
	GOTO       L_main50
;calculator.c,188 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
