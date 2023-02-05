;
; RGB_ring-odraditi_slanje_niza.asm
;
; Created: 12.10.2022. 10:30:22
; Author : Aleksandar Bogdanovic
;


/* Arduino Asembler, RGB diode 800kHz. Odraditi slanje niza R,G,B 
bajtova u nanizanim RGB diodama.*/

// Ugaseni svi led na ring-u 1 sekund, upaljeni belo 2 sekunde, zatim niz pali se 0.5 sekunde prvo crvena, pa plava, pa zelena... Zatim se na 0.5 sekunde 
// po 2 led gase, pa ispocetka sve na MAIN

.include "m328pdef.inc"
.org 0x000000
rjmp main

// NOP = 1 clock cycle = 0.0625

main:
	sbi DDRD, 4
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall white
	rcall delay_2000ms
	rcall delay_ms
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
loop:
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp ase2

ase2:
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as3

as3:
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as4

as4:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as5

as5:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as6

as6:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as7

as7:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as8

as8:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as9

as9:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as10

as10:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as11

as11:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as12

as12:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as13

as13:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as14

as14:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as15

as15:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as16

as16:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as17

as17:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as18

as18:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as19

as19:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as20

as20:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as21

as21:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as22

as22:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall delay_1000ms
	rcall delay_ms
	rjmp as23

as23:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall delay_1000ms
	rcall delay_ms
	rjmp as24

as24:
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall red
	rcall blue
	rcall green
	rcall delay_1000ms
	rcall delay_ms
	rjmp as25

as25:
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as26

as26:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as27

as27:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as28

as28:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as29

as29:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as30

as30:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as31

as31:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as32

as32:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as33

as33:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as34

as34:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as35

as35:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp as36

as36:
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall black
	rcall delay_1000ms
	rcall delay_ms
	rjmp main

black:
	// BLACK = 0x000000, logic 0 code
	ldi r17, 24
b1: sbi PORTD, 4				// 0.40 ms high pulse = 6 CLK cycles
	nop							// NOP = 1 clock cycle = 0.0625 micro seconds
	nop
	nop
	nop
	nop							// 6 * 0.0625 = 0.375 ms
	cbi PORTD, 4				// 0.85ms low pulse = 14 CLK cycles
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop	
	nop						// 12 NOP => 12 CLK cycles						
	dec r17						// 1 CLK cycles
	brne b1						// 1 CLK cycles
	ret

white:
	// WHITE = 0xFFFFFF, logic 1 code
	ldi r17, 24					// 24 bits
w1: sbi PORTD, 4				// 0.80ms high pulse
	nop							// NOP = 1 clock cycle = 0.0625 micro seconds
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 13 NOP => 13 CLK cycles => 0.8125 ms
	//
	cbi PORTD, 4				// 0.45ms low pulse
	// logic 0
	nop
	nop
	nop
	nop
	nop							// 5 NOP
	dec	r17						// 1 CKL cycle
	brne w1						// 1 CKL cycle 5+1+1 = 7 cycles => 7 * 0.0625 = 0.4375 ms
	ret

green:
	// GREEN = 0xFF0000
	ldi r17, 8					// counter for 1st 8 bits
// logic 1
g1:	sbi PORTD, 4				// 0.80ms high pulse
	nop							// NOP = 1 clock cycle = 0.0625 micro seconds
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 13 NOP => 13 CLK cycles => 0.8125 ms
	cbi PORTD, 4				// 0.45ms low pulse
	nop
	nop
	nop
	nop							// 5 NOP
	dec	r17						// 1 CKL cycle
	brne g1						// 1 CKL cycle 5+1+1 = 7 cycles => 7 * 0.0625 = 0.4375 ms
	//
	ldi r17, 16					// counter for remaining 16 bits
	// logic 0
g2:	sbi PORTD, 4				// 0.40ms high pulse
	nop
	nop
	nop
	nop
	nop							// 6 * 0.0625 = 0.375 ms
	cbi PORTD, 4				// 0.85 ms low pulse = 14 CLK cycles
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 12 NOP => 12 CLK cycles						
	dec r17						// 1 CLK cycles
	brne g2						// 1 CLK cycles, 14 * 0.0625 ms = 0.875 ms 
	ret

red:
	// RED = 0x00FF00
	ldi r17, 8					// counter for 1st 8 bits => 00
	// logic 0
red1:sbi PORTD, 4				// 0.40ms high pulse
	nop
	nop
	nop
	nop
	nop							// 6 * 0.0625 = 0.375 ms
	cbi PORTD, 4				// 0.85 ms low pulse = 14 CLK cycles
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 12 NOP => 12 CLK cycles						
	dec r17						// 1 CLK cycles
	brne red1					// 1 CLK cycles, 14 * 0.0625 ms = 0.875 ms
	//
	ldi r17, 8					// counter for 2nd 8 bits => XX
	// logic 1
red2:sbi PORTD, 4				// 0.80ms high pulse
	nop							// NOP = 1 clock cycle = 0.0625 micro seconds
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 13 NOP => 13 CLK cycles => 0.8125 ms
	cbi PORTD, 4				// 0.45ms low pulse
	nop
	nop
	nop
	nop							// 5 NOP
	dec	r17						// 1 CKL cycle
	brne red2					// 1 CKL cycle 5+1+1 = 7 cycles => 7 * 0.0625 = 0.4375 ms
	//
	ldi r17, 8					// counter for final 8 bits => 00
	// logic 0
red3:sbi PORTD, 4				// 0.40 ms high pulse
	nop
	nop
	nop
	nop
	nop							// 6 * 0.0625 = 0.375 ms
	cbi PORTD, 4				// 0.85 ms low pulse = 14 CLK cycles
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 12 NOP => 12 CLK cycles						
	dec r17						// 1 CLK cycles
	brne red3					// 1 CLK cycles, 14 * 0.0625 ms = 0.875 ms
	ret

blue:
	// BLUE = 0x0000FF
	ldi r17, 16					// counter for 1st 16 bits => 0000
	// logic 0
bl1: sbi PORTD, 4				// 0.40 ms high pulse
	nop
	nop
	nop
	nop
	nop							// 6 * 0.0625 = 0.375 ms
	cbi PORTD, 4				// 0.85 ms low pulse = 14 CLK cycles
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 12 NOP => 12 CLK cycles						
	dec r17						// 1 CLK cycles
	brne bl1						// 1 CLK cycles, 14 * 0.0625 ms = 0.875 ms
	//
	ldi r17, 8					// counter for final 8 bits => XX
	// logic 1
bl2:	sbi PORTD, 4				// 0.80ms high pulse
	nop							// NOP = 1 clock cycle = 0.0625 micro seconds
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop							// 13 NOP => 13 CLK cycles => 0.8125 ms
	cbi PORTD, 4				// 0.45ms low pulse
	nop
	nop
	nop
	nop							// 5 NOP
	dec	r17						// 1 CKL cycle
	brne bl2						// 1 CKL cycle 5+1+1 = 7 cycles => 7 * 0.0625 = 0.4375 ms
	ret

delay_ms:					// delay = 50 micro seconds => reset
	ldi  r18, 2
    ldi  r19, 8
L1: dec  r19
    brne L1
    dec  r18
    brne L1
    rjmp PC+1
    ret

delay_2000ms:
	ldi  r18, 163
    ldi  r19, 87
    ldi  r20, 3
L2: dec  r20
    brne L2
    dec  r19
    brne L2
    dec  r18
    brne L2
	ret

delay_1000ms:			// delay je od 0.5 sekunde
	ldi  r18, 41
    ldi  r19, 150
    ldi  r20, 127
L3: dec  r20
    brne L3
    dec  r19
    brne L3
    dec  r18
    brne L3
    rjmp PC+1
	ret





