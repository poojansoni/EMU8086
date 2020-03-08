
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
   
;Reg to Reg 8 bits
;mov al,34h;
;mov bl,al;  
         
;Reg to Reg 16 bits         
;mov ax,1234h;
;mov bx,ax;    
                   
;Reg to Memory 8 bits                   

;Direct Addressing
;mov al,34h;
;mov [1234h],al;
;mov bl,al;

;Indirect Addressing
;mov al,56h;
;mov bx,0x3456h;
;mov [bx],al;
;mov bl,[bx]; 
             
;Base+Index              
;mov al,13h;  
;mov si,0x4;
;mov bx,1234h;
;mov si[bx],al;
;mov bl,si[bx];

;Register Relative
mov al,45h;
mov bx,1234;
mov [bx+4],al; 

  
























;mov [1234h],3456h;
;mov ax,[1234h];
;mov bl,[1234h];
;mov bh,[1235h];

ret




