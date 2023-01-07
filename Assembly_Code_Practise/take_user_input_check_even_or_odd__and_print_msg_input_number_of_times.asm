.model small
.stack 100h

.data
msg1 db 13,10,"The number is odd $"
msg2 db 13,10,"The number is even $"
.code main
      main proc
        
        mov ax,@data;
        mov ds,ax;
        
        mov ah,01h;
        int 21h;
        and al,0fh;
        
        
        test al,01h;
        jz even;
        jnz odd;
        

        
        odd:
        mov ah,09h;
        lea dx,msg1;
        mov cl,al;
        jmp print;
        
        even: 
        mov ah,09h;
        lea dx,msg2;
        mov cl,al;
        jmp print; 
        
        print:      
        int 21h;
        dec cl; 
        jnz print;
        
        exit:
        mov ah,4ch;
        int 21h;
        
        
      main endp
end main
