
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

;8 bit Multiplication

;Reg to Reg
;mov al,04h;
;mov bl,16h;
;mul bl;

;Direct Add
;mov al,04h;
;mov [15h],16h;
;mul [15h];    

;Register Indirect
;mov al,04h;
;mov [bx],16h;
;mul [bx];  

;Base+Index
;mov al,04h;
;mov si,04h; 
;mov [bx+si],16h;
;mul [bx+si];

;Register Relative
;mov al,04h;
;mov 4[bx],16h;
;mul 4[bx];
              
;Base Relative plus Index
;mov al,04h;
;mov si,04h;
;mov 4[bx+si],16h;
;mul 4[bx+si];  


;16 bit Multiplication
 
;Reg to Reg(only this varition is Possible)
;mov ax,1234h;
;mov bx,3456h;
;mul bx; 


 

;8 bit Division

;Reg to Reg
;mov al,0xa2;
;mov bl,82h;
;div bl;     

;Direct Add
;mov al,0xa2;
;mov [15h],82h;
;div [15h];  

;Register Indirect
;mov al,0xa2;
;mov [bx],82h;
;div [bx];  

;Base+Index
;mov al,0xa2;
;mov si,04h; 
;mov [bx+si],82h;
;div [bx+si];

;Register Relative
;mov al,0xa2;
;mov 4[bx],82h;
;div 4[bx];
              
;Base Relative plus Index
;mov al,0xa2;
;mov si,04h;
;mov 4[bx+si],82h;
;div 4[bx+si];


;16 bit Division
 
;Reg to Reg(only this varition is Possible)
;mov ax,3456h;
;mov bx,1234h;
;div bx; 
          
 
ret




