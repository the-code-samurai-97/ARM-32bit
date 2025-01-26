.section .data
msg:    .asciz "Hello, World!\n"  @ The string to print

.section .text
.global _start

_start:

    @ Load the address of the string into r1
    ldr r1, =msg          @ r1 = address of the string

    @ Set the length of the string in r2
    mov r2, #14           @ Length of "Hello, World!\n"

    @ Prepare the syscall parameters
    mov r0, #1            @ File descriptor (1 = stdout)
    mov r7, #4            @ Syscall number (sys_write)
    svc #0                @ Make the syscall

    @ Exit the program
    mov r0, #0            @ Exit code 0
    mov r7, #1            @ Syscall number (sys_exit)
    svc #0                @ Make the syscall
