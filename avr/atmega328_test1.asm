; atmega328_test1.asm
;
; Created: 2/11/2017 5:22:30 PM
; Author : Brandon


; ATmega328_test1.asm
.org    0x0000         ; Store in memory starting here.
ldi		r16,0x0f      ; Load r16 with 0f hex.
out		ddrb,r16      ; Make upper 4 bits of portb input.
; Make lower 4 bits of portb output.
ldi		r17,0x00      ; Load r17 with 00 hex.
ldi		r18,0b11      ; Load r18 with 11 binary.
top:
out		portb,r18     ; Turn on lowest 2 bits of port b.
out		portb,r17     ; Turn off all bits of port b.
rjmp	top           ; Jump to top.