section .text
global _start
_start:

;read number
mov eax,3
mov ebx,2
mov ecx,num
mov dx,1
int 0x80

;send output
mov eax,4
mov ebx,1
mov edx,1
mov ecx,num
int 0x80

;exit
mov eax,1
int 0x80

section .data
section .bss
    num resb 1
