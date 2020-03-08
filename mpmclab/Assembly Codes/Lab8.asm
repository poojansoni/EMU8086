
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
         
include 'emu8086.inc'         
org 100h

;Division Using Repetitive Subtraction

;8 bits
;mov al,16h;
;mov bl,04h;
;mov cx,00;
;mov dx,00h;

;L1: cmp al,bl;
;    JL L2;
;    sub al,bl;
;    inc dx;       Dont use cx becoz in loop cx acts as counter 
;    Loop L1;      and its value becomes zero after every iteration.
;L2: ret

;16 bits
;mov ax,0x0234;
;mov bx,0x0111;
;mov cx,00;
;mov dx,00;

;L1: cmp ax,bx;
;    JL L2;
;    sub ax,bx;
;    inc dx;       Dont use cx becoz in loop cx acts as counter 
;    Loop L1;      and its value becomes zero after every iteration.
;L2: ret

           



;To Check whether an year is leap year or not
         
;mov si,1997;         
         
;mov ax,si;
;mov dx,00;
;mov bx,400;
;div bx;
;cmp dx,00;
;JZ L1;

;mov ax,si;
;mov dx,00;
;mov bx,100;
;div bx;  
;cmp dx,00;
;JZ L2;

;mov ax,si;
;mov dx,00;
;mov bx,04;
;div bx; 
;cmp dx,00;
;JZ L1;

;L2:print 'It is not a Leap Year'
;    ret

;L1:print 'It is a Leap year'
;   ret





;Sum of first 10 Natural Numbers

;mov ax,0;
;mov dx,1;
;mov cx,10;

;L1: add ax,dx;
;    inc dx;
;    Loop L1;
    
       

ret




