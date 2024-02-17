section .data
    hello db 'Hello, world!', 0x0a   ; 'Hello, world!' followed by newline
    hello_len equ $ - hello           ; length of the hello string
 
section .text
    global _start

_start:
    ; File descriptor for stdout (1), syscall number for write (4)
    mov eax, 4         ; syscall number for write
    mov ebx, 1         ; file descriptor for stdout
    mov ecx, hello     ; pointer to the string to print
    mov edx, hello_len ; length of the string
    int 0x80           ; invoke syscall

    ; Exit the program
    mov eax, 1         ; syscall number for exit
    xor ebx, ebx       ; exit code 0
    int 0x80           ; invoke syscall
