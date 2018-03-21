        org     07c00h
        mov     ax, cs
        mov     ds, ax
        mov     es, ax
        call    DispStr
        jmp     $
DispStr:
        mov     ax, BootMessage
        mov     bp, ax                  ; ES:BP = 串地址
        mov     cx, 16                  ; CX = 串长度
        mov     ax, 01301h              ; AH = 13，AL = 0x01
        mov     bx, 000ch               ; 页号为0（BH = 0），黑底红字（BL = 0xc，高亮）
        mov     dl, 0
        int     10h                     ; 10号中断
        ret
BootMessage:            db      "Hello, OS world!"
times   510-($-$$)      db      0       ; db：define byte
dw      0xaa55                          ; dw：define word