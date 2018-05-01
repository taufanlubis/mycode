section .text
global _start
_start:

    ;display message
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,lenmsg
    int 0x80

    ;wait for key press
    mov eax,3
    mov ebx,0
    mov edx,1
    int 0x80

    ;exit
    mov eax,1
    int 0x80 

section .data
    msg db 'Please, press any key to continue',0xA,0xD
    lenmsg equ $-msg
