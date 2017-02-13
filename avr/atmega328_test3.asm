;
; ATmega328_test3.asm
;
; Created: 2/12/2017 7:14:20 PM
; Author : Brandon
;


.org	0x0000
	ldi		r16, 0x12	;load immediate r16 with hex 12
	ldi		r17, 22		;load immediate r17 with decimal 22
	ldi		r18, 0b00001111	;load immediate r18 with binary 1111
	inc		r0			;increment r0
	dec		r1			;decrement r1

	add		r2, r1		;r2+=r1
	sub		r13, r17	;r13-=r17

	subi	r22, 11

	rcall	delay		;call subroutine

main0:
	rjmp	main0		;jump to main0

delay:
	nop			;no operation
	ret			;return from subroutine