
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Sum of digits of a given number


;mov si,1234;

;mov ax,si;
;mov si,00;
;mov bx,10;
;mov cx,00;
;mov dx,00;
    
;L1:cmp ax,00;
;   JZ L2;
;   mov dx,00;
;   div bx;
;   add si,dx;
;   Loop L1;    

;L2: ret    



;Count the number of 1's in a given Number


;8 bits

;mov bl,38h;

;mov al,bl; 
;mov cx,08;
;mov dl,00h;

;L1: cmp cx,0;
;    JLE L3;  
;    dec cx;
;    RCR al,1;  
;    JC L2;
;    JMP L1;
    
;L2: INC dl;
;    JMP L1;
        
;L3:  ret



;16 bits

;mov si,0x1743;

;mov ax,si; 
;mov cx,16;
;mov dx,00h;

;L1: cmp cx,0;
;    JLE L3;  
;    dec cx;
;    RCR ax,1;  
;    JC L2;
;    JMP L1;
    
;L2: INC dx;
;    JMP L1;
        
;L3:  ret

    
ret




