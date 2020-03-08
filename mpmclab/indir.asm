
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;mov 10 val in mem loc starting 4000h add 5th,7th,9th val then store in 11th loc using indirect
mov si,4000h
mov [si+00],01h
mov [si+01],02h
mov [si+02],03h
mov [si+03],04h
mov [si+04],05h
mov [si+05],06h
mov [si+06],07h
mov [si+07],08h
mov [si+08],09h
mov [si+09],0ah
mov ax,[si+04h]
add ax,[si+06]
add ax,[si+08]
mov [si+10],ax

ret





