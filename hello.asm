section .data
    msg db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write our string to stdout
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg        ; pointer to message
    mov rdx, 13         ; message length
    syscall

    ; exit
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code: 0
    syscall
