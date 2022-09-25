;title: a letter displayed in the next line

.model small
.stack 100h
.code
main proc
    
    mov ah, 2    ; print question mark
    mov dl, '?'
    int 21h 
    
    mov ah, 1    ; taking input
    int 21h
    mov bl, al      
    
    mov ah, 2    ; printing newline
    mov dl, 10
    int 21h
    mov dl, 13  
    int 21h
    
    
    mov ah, 2    ; showing output
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
