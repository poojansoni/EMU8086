
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to reset 1000 mem loc starting from 34500h

mov cx,1000h
mov ax,3450h
mov es,ax
mov di,0000h
mov ax,00h
rep
stosb

ret




