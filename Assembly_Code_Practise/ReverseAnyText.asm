.model small
.stack 100h
.data
msg1  db        "Input:  $"
msg2  db 13,10, "Output: $"

.code main
      main proc
       
        mov ax,@data;
        mov ds,ax;
        
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        
        mov ah,1;
        
        input:
            int 21h;
            mov bl,al;
            
            cmp bl,0dh;
            je newline; if carr. then print output
            
            push bx;
            jmp input;
            
        newline:
            mov ah,09h;
            lea dx,msg2;
            int 21h;
            
            mov ah,02h;
        output:
            pop dx;
            int 21h;
            cmp sp,0100h; check stack is empty or not
            je exit;
            jmp output;
            
  
  exit:
        mov ah,4ch;
        int 21h;
      main endp
end main
