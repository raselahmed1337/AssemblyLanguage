.model small
.stack 100h
;if(al is less than 0 then put  ffh  in ah else put 0 in ah)
.data
.code main
      main proc
        mov al,-1;
        
        cmp al,0;
        jl negative;
        jge else_if;
        
        negative:
        mov ah,-1;
        jmp exit;
        
        else_if:
        mov ah,0;
        
        exit:
      main endp
end main     