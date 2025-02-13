.section .text
.global _start

_start:
    ldr	r1, =#0x10101010 @load the constant value to r1

    lsl	r2, r1, #4  @logical Shift left r1 by 4 and store in r2
    lsr	r3, r1, #4  @logical shift right r1 by 4 and store in r3
    asr	r4, r1, #4  @;Arithmetic shift right by 4 store in r4
    ror	r5, r1, $4  @;Rotate r1 to the right by 4 and store in r5
    rrx	r6, r1      @;rotate right with extend r1 by 1 and store in r6

loop:
    B loop          @;infinite loop to prevent from program exiting


