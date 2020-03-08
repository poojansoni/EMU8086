
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;8 bit SIGNED Multiplication

;Reg to Reg
;mov al,-04h;
;mov bl,02h;
;imul bl;

;Direct Add
;mov al,-04h;
;mov [15h],02h;
;imul [15h];    

;Register Indirect
;mov al,-04h;
;mov [bx],02h;
;imul [bx];  

;Base+Index
;mov al,-04h;
;mov si,04h; 
;mov [bx+si],02h;
;imul [bx+si];

;Register Relative
;mov al,-04h;
;mov 4[bx],02h;
;imul 4[bx];
              
;Base Relative plus Index
;mov al,-04h;
;mov si,04h;
;mov 4[bx+si],02h;
;imul 4[bx+si];  


;16 bit Multiplication
 
;Reg to Reg(only this varition is Possible)
;mov ax,-1234h;
;mov bx,3456h;
;imul bx; 


 

;8 bit Division

;Reg to Reg
;mov ax,-05h; (do not use al to store negative number us ax)
;mov bl,02h;
;idiv bl;     

;Direct Add
;mov ax,-05h;
;mov [15h],02h;
;idiv [15h];  

;Register Indirect
;mov ax,-05h;
;mov [bx],02h;
;idiv [bx];  

;Base+Index
;mov ax,-05h;
;mov si,04h; 
;mov [bx+si],02h;
;idiv [bx+si];

;Register Relative
;mov ax,-05h;
;mov 4[bx],02h;
;idiv 4[bx];
              
;Base Relative plus Index
;mov ax,-05h;
;mov si,04h;
;mov 4[bx+si],02h;
;idiv 4[bx+si];


;16 bit Division
 
;Reg to Reg(only this varition is Possible)
mov dx,-1000h;
mov ax,0xffff;
mov bx,10h;
idiv bx; 

ret




