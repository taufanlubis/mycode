.data
    var1: .ascii "this is a text"
    var2: .byte 10
    var3: .int 2
    var4: .short 4
    var5: .float 9.5
    var6: .int 10,20,30,40,50

.bss
    .var7: space 256 ;buffer space 256 byte

.text

    global _start
    _start:
        nop 
        mov ax,1
        mov bx,0
        int 0x80
