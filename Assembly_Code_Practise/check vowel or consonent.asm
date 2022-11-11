.model small
.stack 100h

.data
msg1 db "consonent $"
msg2 db 0ah,0dh,"vowel $"

.code main
      main proc
        mov ax,@data;
        mov dx,ax;
        
        mov ah,1;
        int 21h;
        
        cmp al,'a';
        je vowel;
        cmp al,'e';
        je vowel;
        cmp al,'i';
        je vowel;
        cmp al,'o';
        je vowel;
        cmp al,'u';
        je vowel;
        cmp al,'A';
        je vowel;
        cmp al,'E';
        je vowel;
        cmp al,'I';
        je vowel;
        cmp al,'O';
        je vowel;
        cmp al,'U';
        je vowel;
                
        mov ah,9;
        lea dx,msg1;
        int 21h;
        jmp exit;
                
        vowel:
        mov ah,9;
        lea dx,msg2;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
      main endp
end main      
         
      