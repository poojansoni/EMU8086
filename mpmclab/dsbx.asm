
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to move 8 bytes from ds:bx into general purpose registers

mov cx,04h
loop1:
mov ax,[bx]
add bx,02h
loop loop1

ret




