.section .text
.global _start

_start:
    LDR r0, =#0x1337331     @ load 0x1337331 adress to r0
    movw	r1, 0xface         @ load bottom 8 bit of r1 ; 0xface
    movt	r1, 0xf00d         @ load top 8 bit of r1; 0xf00dface
