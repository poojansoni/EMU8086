



org 100h

;mov 10 val in mem loc starting 4000h add 5th,7th,9th val then store in 11th loc

mov [4000h],01h
mov [4001h],02h
mov [4002h],03h
mov [4003h],04h
mov [4004h],05h
mov [4005h],06h
mov [4006h],07h
mov [4007h],08h
mov [4008h],09h
mov [4009h],0ah
mov ax,[4004h]
add ax,[4006h]
add ax,[4008h]
mov [400ah],ax

ret

ret




