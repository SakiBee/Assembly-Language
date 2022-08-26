;Print a string for n times. But each times 
;a character will be erased from the front of the string

.model small
.stack 100h
.data
m db  'hello world!',10,13, '$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    mov ah, 9
    lea dx, m
    
    level:
        int 21h
        inc dx
    loop level
        
    exit:
        mov ah, 4ch
        int 21h
    main endp
end main
