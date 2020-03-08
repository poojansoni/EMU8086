
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; copy data dada to mem loc 85321h for 512 times
mov ax,0DADAh
mov di,0021h
mov bx,8530h
mov es,bx
mov cx,512h 
rep
stosb 


ret




