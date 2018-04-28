section .text

global _start
_start:
    mov eax,4
    mov ebx,1
    mov edx,9
    mov ecx,star
    int 0x80

    mov eax,1
    int 0x80

section .data
    star times 9 db '*'
