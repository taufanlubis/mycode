section .text
global _start
_start:

    mov ebx,luas
    add ebx,'0'    
    mov [msg],ebx
    
    mov eax,sys_write
    mov ebx,stdout
    mov edx,1
    mov ecx,msg
    int 0x80

    mov eax,sys_write
    mov ebx,stdout
    mov edx,2
    mov ecx,newline
    int 0x80

    mov eax,sys_exit
    int 0x80

section .bss
    msg resb 1

section .data
    panjang equ 2
    lebar equ 3
    luas equ panjang * lebar
    sys_write equ 4
    sys_exit equ 1
    stdout equ 1
    newline db 0xa,0xd
