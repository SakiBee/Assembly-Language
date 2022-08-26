.model small
.stack 100h
.data
str db 'Displaying A to Z by loop : $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9             ; printing message
    lea dx, str
    int 21h
    
    mov ah, 2             ; newline
    mov dl, 10
    int 21h
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov cx, 26            ; loop size
    mov ah,2
    mov dl, 'A'           ; initializing dl = A
    
   level1:                ; loop start
    int 21h
    inc dl                ; dl++
    loop level1           ; back to initial position
     
    
    mov ah, 4ch
    int 21h
    main endp
end main