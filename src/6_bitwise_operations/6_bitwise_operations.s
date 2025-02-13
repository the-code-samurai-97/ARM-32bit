.section .text
.global _start

_start:
    ldr	r1, =#0x10101010 @load the constant value to r1
    ldr	r7, =#0x0F0F0F0F @load the constant value to r7
    and	r2, r1, r7 @bitwise AND r1 with 0x0F0F0F0F and store in r2
    orr	r3, r1, r7 @bitwise OR r1 with 0x0F0F0F0F and store in r3
    eor	r4, r1, r7 @bitwise XOR r1 with 0x0F0F0F0F and store in r4
    bic	r5, r1, r7 @bitwise BIC r1 with 0x0F0F0F0F and store in r5

loop:
    B loop          @;infinite loop to prevent from program exiting
