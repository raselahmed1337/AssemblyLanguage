;Counting the number of 1's::
.model small
.stack 100h
.data
msg1 db        "Type a char $"
msg3 db  13,10,"the number of 1 bits is $" 
c2 db ?,"$"
c3 db ?
en db 13,10, "even $"
od db 13,10, "odd $"
.code main
      main proc
        
        mov ax,@data;
        mov ds, ax;
        
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        
        mov ah,01h;
        int 21h;
        mov c3,al ; for number of 1 bits
         
    ;Count no of 1 bits
         mov ah,09h;
         lea dx,msg3;
         int 21h;
         mov al,0;
         mov cx,8;
      top1:
         rol c3,1;
         jnc next;
         inc al;
      next:
         loop top1;
         mov ah,02h;
         mov dl,al;
         add dl,30h;
         int 21h;
         
         
        test bx,1;
        jz even;
        jnz odd;
        jmp exit;
        
        even:
        mov ah,09h;
        lea dx,en;
        int 21h;
        jmp exit;
        
        odd:
        mov ah,09h;
        lea dx,od;
        int 21h;
         
      exit:
      mov ah,4ch;
      int 21h;
      main endp
end main 
