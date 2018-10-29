.globl _start
_start:
	ldr r0,=0x101f1000	@ r0 := 0x 101f 1000
	mov r1,#0		@ r1 := 0
loop:
	add r1,r1,#1		@ r1 := r1 + 1
	and r1,r1,#7		@ r1 := r1 and 1111
	add r1,r1,#0x30		@ r1 := r1 + 0011 000
	str r1,[r0]		@ MEM[r1] := MEM[r0]
	mov r2,#0x0D		@ R2 := 0x0D
	str r2,[r0]		@ MEM[r2] := MEM[r0]
	mov r2,#0x0A		@ R2 := 0x0A
	str r2,[r0]		@ MEM[r2] := MEM[r0]
	b loop			@ goto loop
