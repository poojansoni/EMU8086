
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; fill 100 bytes in seg pointed by 1000h with data byte 20h
mov ax,20h
mov cx,100h
mov di,1000h
rep
stosb

ret




