section .text
global _start

_start:
    ;show message var1
    mov eax,4
    mov ebx,1
    mov edx,lenmsgvar1
    mov ecx,msgvar1
    int 0x80
    ;read var1
    mov eax,3
    mov ebx,0
    mov edx,2
    mov ecx,num1
    int 0x80

    ;show message var2
    mov eax,4
    mov ebx,1
    mov edx,lenmsgvar2
    mov ecx,msgvar2
    int 0x80
    ;read var2
    mov eax,3
    mov ebx,0
    mov edx,2
    mov ecx,num2
    int 0x80

    ;sum var1,var2
    mov eax,[num1]
    sub eax,'0'
    mov ebx,[num2]
    sub ebx,'0'
    add eax,ebx
    add eax,'0'
    mov [result],eax

    ;display result
    mov eax,4
    mov ebx,1
    mov edx,lenmsgresult
    mov ecx,msgresult
    int 0x80
    mov eax,4
    mov ebx,1
    mov edx,1
    mov ecx,result
    int 0x80
    mov eax,4
    mov ebx,1
    mov edx,1
    mov ecx,newline
    int 0x80        

    ;exit
    mov eax,1
    int 0x80

section .bss
    num1 resb 1
    num2 resb 1
    result resb 1 

section .data
    msgvar1 db 'Enter first number: '
    lenmsgvar1 equ $-msgvar1

    msgvar2 db 'Enter second number: '
    lenmsgvar2 equ $-msgvar2

    msgresult db 'Total value: '
    lenmsgresult equ $-msgresult
   
    newline db 0xa,0xd 
