; multi-segment executable file template.

data segment
    ; add your data here!
    temp db 12h,22h,32h;
    
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
            
    lea si,temp;
    mov al,[si];   fetch 12 from temp
    inc si;
    mov ah,[si];   fetch 22 from temp
    inc si;
    mov bl,[si];   fetch 32 from temp
ends

end start ; set entry point and stop the assembler.
