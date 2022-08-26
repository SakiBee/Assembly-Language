.model small
.stack 100h
.data
e db ?

.code
main proc
    
    
    mov ah, 1
    int 21h
    mov bl, al
    
  
    
    mov ah, 1
    int 21h
    mov bh, al
    
    
    
    mov ah, 1
    int 21h
    mov cl, al
    

    
    add bl, bh
    sub bl, 48
    
    mov ch, bl
    add cl, ch
    sub cl, 48 
    
    mov e, cl
    
    mov ah, 2
    mov dl, e
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main