.model small
.stack 100h

.data

.code main
      main proc
        mov ah,01h;
        int 21h;
        mov bl,al;
        
        mov ah,01h;
        int 21h;
        mov bh,al;
        
        mov ah,02h;
        mov dl,10;
        int 21h;
        mov dl,13;
        int 21h;
        
        xchg bl,bh;
        
        mov ah,02h;
        mov dl,bl;
        int 21h;
        mov dl,bh;
        int 21h;
      main endp
 end main