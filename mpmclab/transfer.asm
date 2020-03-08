
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; move 1kb data from mem loc 85430h to 70300h

mov si,0030h
mov di,0000h
mov ax,8540h
mov ds,ax
mov bx,7030h
mov es,bx
mov cx,1024h
cld
rep
movsb
hlt
ret




