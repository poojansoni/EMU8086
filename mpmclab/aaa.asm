
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; ascii additiom
mov al,22h
mov bl,99h
adc al,bl
aaa
mov [100h],al
adc al,al
mov [101h],al

ret




