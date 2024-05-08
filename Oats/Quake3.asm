global _start

section .data
    threehalfs dq 1.5
    number dq 2.3
    newline db 0xA      ; ASCII code for newline
    result_msg db "Result: ", 0  ; Null-terminated string

section .text

extern printf          ; External printf function

global Q_rsqrt

Q_rsqrt:
    fld qword [rsp+8]   ; Load the floating-point argument onto the FPU stack
    fsqrt               ; Compute the square root
    mov eax, 0x5f3759df ; Initial guess for Newton-Raphson iteration
    mov dword [rsp-4], eax ; Store the guess on the stack
    fild dword [rsp-4]  ; Load the guess onto the FPU stack
    fmul                ; Multiply the guess by the original value
    fld qword [rsp+8]   ; Load the original value again
    fmul                ; Multiply by the original value again
    fsub qword [threehalfs] ; Subtract from 1.5
    fmulp               ; Multiply by the result of the previous multiplication
    ret                 ; Return with the result in ST(0)

_start:
    ; Load the argument into a register
    mov rax, qword [number]

    ; Allocate space on the stack for the argument
    sub rsp, 8

    ; Store the argument on the stack
    mov qword [rsp], rax

    ; Call Q_rsqrt function
    call Q_rsqrt

    ; Clean up the stack
    add rsp, 8

    ; Store the result in memory
    fstp qword [result]

    ; Print the result message
    mov rax, 0          ; No vector is used
    mov rdi, result_msg ; First argument (format string)
    call printf         ; Call printf

    ; Print the result value
    mov rax, 1          ; Print scalar floating-point value
    fld qword [result]  ; Load the result onto the FPU stack
    fstp qword [rsp]    ; Store the result on the stack
    mov rdi, rsp        ; First argument (pointer to the value)
    call printf         ; Call printf

    ; Print a newline character
    mov rax, 0          ; No vector is used
    mov rdi, newline    ; First argument (format string)
    call printf         ; Call printf

    ; Exit the program
    mov eax, 60         ; sys_exit system call
    xor edi, edi        ; exit status 0
    syscall             ; invoke the system call

section .bss
    result resq 1