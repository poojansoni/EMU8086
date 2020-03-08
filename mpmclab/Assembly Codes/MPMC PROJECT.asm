; multi-segment executable file template.

data segment
     temp1 db 5 , 12 , 15 , 41 , 4h , 3h  , 29;
     len1 equ $-temp1;                                
     
     temp2 db 1 , 2 , 3, 4, 5 , 6, 7 , 8 , 9;
     len2 equ $ - temp2;
     
     temp3 db 10 dup(0); 
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:  
include emu8086.inc
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax;  
    
    lea si , temp3;
    mov bx , si;
    mov cx , len1; 
    lea di , temp1;
    push cx ;
    
    mov cx , len1;
    print 'Array 1: '
    call printarr;
    call nextline
    
    lea di, temp2;
    mov cx , len2;
    print 'Array 2: '
    call printarr;
    call nextline;
    
    pop cx;
    lea si , temp1; 
    print 'Intersecting Element: '
    dec si;
    mov al , 00h;
    
L1:    cmp cx , 0;
       jz L2;
       dec cx; 
       inc si;
       lea di , temp2;
       mov dx , len2;
       inc dx;
   
       
L4:    dec dx;
       cmp dx , 0;
       jz L1;
       cmpsb;
       jz L3;
       dec si;
       jmp L4;            


L3:    dec di;
       mov ah , [di];
       mov [bx] , ah;
       inc bx; 
       inc al;
       push ax;
       mov al,ah;
       mov ah , 00h;
       call PRINT_NUM_UNS;  (Procedure that prints out an unsigned number in AX register)
       print ' ';
       pop ax;
       dec si;
       
       jmp L1;



L2: push ax;
    call nextline;
    print 'Number of intersecting elements:'
    pop ax;
    mov ah , 00h;
    call PRINT_NUM_UNS;    
    hlt;




printarr proc 


lea si , di;

LOP:
   mov ax , [si];
   mov ah , 00h;
   call PRINT_NUM_UNS;
   print ' '
   INC SI;    
   loop LOP;
   
ret

nextline proc

mov dx , 13;   (ASCII value of carriage return character =13)
mov ah , 2h;   (2 is used for output)
int 21h;       (interrupt 21 is used to display contents on scree)
mov dx , 10;   (ASCII value of next line character =10)
mov ah , 2h;   
int 21h;
int 21h;
ret      
 
      
       
DEFINE_PRINT_NUM_UNS     
ends

end start ; set entry point and stop the assembler.
