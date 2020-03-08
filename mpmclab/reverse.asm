
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; a block of 50 words is present in the mem loc from address 5000 to 1500h walp to arrange the block in reverse order from 5000h to 4500h

mov ax,5000h
mov ds,ax
mov es,ax
mov si,1500h
mov di,4500h
mov cx,50h
l1:
cld
lodsw
std
stosw
loop l1
hlt

ret




