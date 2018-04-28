section .text
global  _start
_start:

push 0xAAAAAAAA
push 0xBBBBBBBB
push 0xCCCCCCCC
push 0xDDDDDDDD

pop eax
pop ebx
pop ecx
pop edx

exit:
mov eax,1
mov ebx,0
int 0x80
