.model small
.stack 100h
.data
.code main
      main proc 
        mov cx,80h;
        
        mov ah,02h;
        mov dl,'*';
        for_:
        int 21h;
        loop for_;
        
        exit:
        mov ah,4ch;               
        int 21h;
      main endp
end main      