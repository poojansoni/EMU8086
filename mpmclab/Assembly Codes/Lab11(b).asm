; multi-segment executable file template.
 
include 'emu8086.inc'
 
data segment
    ; add your data here!
    temp1 db 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h;
    temp2 db 7h,8h,4h,5h,2h,6h,7h,8h,9h,10h;
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax 
    
    lea si,temp1;
    lea di,temp2;
    mov ax,00;
    mov cx,10;
    
    REPZ CMPSB;
    JNZ L1;
                                        
L2: print 'The Two Arrays are SAME'
    hlt                                       
                                        
L1: print 'The Two Arrays are  NOT SAME'
    
ends

end start ; set entry point and stop the assembler.
