
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; 0.625AX+0.125DX+1.5BX store in [4000h]
; change in fraction = 5/8 AX + 1/8 DX + 3/2 BX
; ax = 2000h dx = 1000h bx = 1234h

mov ax,2000h
mov cx,ax
shl ax,02h
add ax,cx
shr ax,04h

mov dx,1000h
shr dx,04h

mov bx,1234h
mov cx,bx
shl bx,01h
add bx,cx
shr bx,01h

add ax,dx
add ax,bx

mov [4000h],ax  


ret




