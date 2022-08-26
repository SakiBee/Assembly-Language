;display a string for 10 times

.model small
.data
stars db 0ah,0dh,'A simple string to test','$'
.code
main proc
    mov ax,@data ;initialize ds
    mov ds,ax
    
    mov ah,9 ; prepare to display
    lea dx,stars
    int 21h ; display 10 times *
    
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,4ch ;return to dos
    int 21h
    
    main endp
end main
