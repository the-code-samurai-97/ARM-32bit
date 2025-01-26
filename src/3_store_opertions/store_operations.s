.section .text
.global _start

_start:
    ldr	r0, =mydata     @load mydata to r0
    ldr	r1, =#32        @ load 32 to r1
    str	r1, [r0]        @ store the address of r1 in r0

.section .data
mydata:
    .byte 0x0

