
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

include 'emu8086.inc' 
org 100h 

;Multiply Using Repetitive Addition

    ;mov ax,0008h;
    ;mov cx,0004h;  
    ;mov dx,0000h;

    ;L1: add dx,ax;
    ;    loop L1;  
    
    
;Left Shift (8 bits and 16 bits)

    ;mov al,08h; 
    ;mov dx,0200h;
    ;mov cl,02;

    ;sal al,cl;   
    ;sal dx,cl;

;Right Shift(8 bits and 16 bits)

    ;Unsigned
    
    ;mov al,08h;
    ;mov dx,0200h;
    ;mov cl,02;

    ;shr al,cl;
    ;shr dx,cl; 
 
    ;Signed
    
    ;mov al,0xF8;
    ;mov dx,0xF200;
    ;mov cl,02;

    ;sar al,cl;
    ;sar dx,cl;
    
;Check Even and Odd  

    ;include 'emu8086.inc'   (for this question only)
    ;org 100h
    
    mov ax,0011h;
    mov bl,02h;
    div bl;
    cmp ah,00h;
    
    JZ L2
    
    L1: print 'Odd Number'
    ret
    L2: print 'Even Number'
    ret 
    
ret