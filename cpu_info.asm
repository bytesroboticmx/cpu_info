section .data
    filename db "/proc/cpuinfo", 0 ; Nombre del archivo a abrir
    buffer db 1024 dup(0)          ; Buffer para almacenar datos leídos

section .text
global _start

_start:
    ; Abrir el archivo (syscall open)
    mov rax, 2                ; syscall number para open
    mov rdi, filename         ; Primer argumento: nombre del archivo
    xor rsi, rsi              ; Segundo argumento: flags (0 para sólo lectura)
    syscall                   ; Llamar al sistema

    ; Leer del archivo (syscall read)
    mov rdi, rax              ; Descriptor de archivo devuelto por open
    mov rax, 0                ; syscall number para read
    mov rsi, buffer           ; Buffer para almacenar los datos leídos
    mov rdx, 1024             ; Número de bytes a leer
    syscall                   ; Llamar al sistema

    ; Escribir en la salida estándar (syscall write)
    mov rax, 1                ; syscall number para write
    mov rdi, 1                ; Descriptor de archivo para stdout
    ; rsi ya contiene la dirección del buffer
    ; rdx ya contiene el número de bytes leídos
    syscall                   ; Llamar al sistema

    ; Salir (syscall exit)
    mov rax, 60               ; syscall number para exit
    xor rdi, rdi              ; Código de salida 0
    syscall                   ; Llamar al sistema
