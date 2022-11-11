.model small
.stack 100h
.data
.code main
      main proc
        mov ax,3;
        mov bx,5;
        mov cx,2;
        
        cmp ax,bx;
        jl then;
        cmp bx,cx;
        jl then;
        
        mov dx,1;
        jmp end_if
        
        then:
        mov dx,0;
        
        end_if:
      main endp
end main      
