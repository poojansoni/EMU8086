
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;[(al+bl)*bh]+cx

;mov ax,0x0002;
;mov bx,0x0804;
;mov cx,0x0123;

;add al,bl;
;mul bh;
;add ax,cx; 

;3P+5Q+2R

;mov ax,0x0408;
;mov dx,0x0202;
;mov bp,0x0711;

;mov si,ax;
;sal ax,0x01;
;add ax,si;
;mov cx,dx;
;sal dx,0x02;
;add cx,dx;
;sal bp,0x01;
;add cx,ax;
;add cx,bp;
  
;1's Compliment

;mov bl,0x04;
;mov ax,0x1234;
;not bl;
;not ax;
  
;2's Compliment   

;mov ax,0x1234;
;mov bl,0x04;

;not bl;
;inc bl;

;not ax;
;inc ax;

;32 bit 2's Compliment

mov ax,0x5678;
mov dx,0x1234;

not dx;
not ax;
inc ax;
adc dx,0;

ret




