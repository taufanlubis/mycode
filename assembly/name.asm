section .text

global _start
_start:
    mov eax,4
    mov ebx,1
    mov edx,lenmsg
    mov ecx,msg
    int 0x80

    mov eax,3
    mov ebx,2
    mov edx,6
    mov ecx,yourname
    int 0x80

    mov eax,4
    mov ebx,1   
    mov edx,lensay
    mov ecx,say
    int 0x80

    mov eax,4
    mov ebx,1
    mov edx,6
    mov ecx,yourname
    int 0x80

    mov eax,4
    mov ebx,1
    mov edx,1
    mov ecx,newline
    int 0x80

    mov eax,1
    int 0x80


section .data
    msg db 'What is your name (max 6 chars)?',0xa
    lenmsg equ $ - msg
    say db 'Welcome '
    lensay equ $ - msg
    newline db 0xa

section .bss
    yourname resb 6
