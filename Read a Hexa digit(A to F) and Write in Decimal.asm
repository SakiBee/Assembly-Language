;title: Read the hex digit and Write in decimal

.model small
.data
msg db 0ah,0dh,'Enter a hex digit: $'
msg2 db 0ah,0dh,'In decimal it is 1'
c1 db ?,'$'
.code
main proc
    mov ax, @data     ;initialize ds
    mov ds, ax  
    
    mov ah, 9        ; display 1st msg
    lea dx, msg
    int 21h    
    
    mov ah, 1        ; read hex digit (A - F)
    int 21h
    sub al, 11h      ; *
    mov c1, al       ; store it   
    
    mov ah, 9        ; display 2nd msg until $
    lea dx, msg2
    int 21h       
    
    mov ah, 4ch      ; return to dos
    int 21h
    main endp
end main
