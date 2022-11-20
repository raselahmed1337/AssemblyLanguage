;Write a program to find the sum of the input digits from the user and put it in AX register;
;example:
;Input: 456
;Output: AX will store 000F
 
 
 .model small
.stack 100h

.data
.code main
      main proc
       
     mov dx,0;
     mov ah,01h;
     int 21h;
     
     while_:
     cmp al,0dh;
     je end_while;
     sub al,30h;
     add dl,al;
     int 21h;
     jmp while_;
     
     mov ax,dx;     
     end_while:
     
     exit:
     mov ah,4ch;
     int 21h;
        
      main endp
end main      
