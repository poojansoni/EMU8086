
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; statement of neg and cmp
mov al,05h
mov bl,06h
neg bl
cmp al,bl

ret




