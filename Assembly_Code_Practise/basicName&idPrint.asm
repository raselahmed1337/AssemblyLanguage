.model small
.stack 100h

.data
myname dw "rasel ahmed $"
id dw "132143234 $"

.code main
    main proc
        mov ax,@data;
        mov ds, ax;
        
        mov ah,9;
        lea dx,myname;
        int 21h;
        
        mov ah,2;
        mov dl,10;
        int 21h;
        mov dl,13;
        int 21h;
         
        mov ah,9;
        lea dx,id;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
                   

    main endp    
end main        


        
            