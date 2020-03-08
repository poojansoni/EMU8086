
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; 3AX+5DX+4BP store in cx

mov ax,02h
mov dx,ax
shl ax,01h
add ax,dx
mov dx,05h
mov bx,dx
shl dx,02h
add dx,bx
mov bx,08h 
mov bp,bx 
shl bp,02h
add ax,dx
add ax,bp
mov cx,ax 


ret




