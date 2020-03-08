
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;compute (al+bl)*bh+cx
mov al,03h
mov bl,05h
add al,bl
mov bh,07h
mul bh
mov cx,0011h
add ax,cx
ret




                                                              