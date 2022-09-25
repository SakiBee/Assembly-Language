;Print a string for n times. Here we showed only 10 times

.model small
.stack 100h
.data
m db  'hello world!',10,13, '$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10    
    
    level:
        mov ah, 9
        lea dx, m
        int 21h
        inc dx
    loop level
        
    exit:
        mov ah, 4ch
        int 21h
    main endp
end main
