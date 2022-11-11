.model small
.stack 100h

.data
msg1 db "odd $"
msg2 db "even $"

.code main
      main proc
        mov ax,@data;
        mov ds,ax;
        
        mov ah,01h;
        int 21h;
        sub al,30h;
        
        cmp al,1;
        je odd;
        cmp al,3;
        je odd;
        cmp al,2;
        je even;
        cmp al,4;
        je even;
        jmp exit;
        
        odd:
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        jmp exit;
        
        even:
        mov ah,09h;
        lea dx,msg2;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
      main endp
 end main     
        