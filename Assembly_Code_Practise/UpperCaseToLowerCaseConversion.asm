; add three numbers

.model small
.stack 100h

.data
msg1 db "upper form $"
msg2 db "lower form $"

.code main 
      main proc
        mov ax,@data;
        mov ds,ax;
        
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        
        mov ah,01h;
        int 21h;
        mov bl,al;
        
        mov ah,02h;
        mov dl,10;
        int 21h;
        mov dl,13;
        int 21h;
        
        mov ah,09h;
        lea dx,msg2;
        int 21h;
        
        mov ah,02h;
        add bl,20h; lower case ascii starts (a) -> 61H; upper case ascii starts (A) -> 41H;
        mov dl,bl;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
        
      main endp
end main
        
        