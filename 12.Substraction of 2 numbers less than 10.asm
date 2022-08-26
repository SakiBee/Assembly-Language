
; title: Substraction of two digits less than 10

.model small

.data
msg db 0ah,0dh,'The Substraction of '
value2 db ?,' and '
value1 db ?,' is '
Substraction db ?,'$'

.code
    main proc
    mov ax, @data        ; initialize ds
    mov ds, ax  
    
    mov ah, 2            ; display '?'
    mov dl, '?'
    int 21h
    
    mov ah, 1
    int 21h              ; read 1st digit
    mov value1, al       ; store it in memory
    
    int 21h              ; read 2nd digit
    mov value2, al       ; store it in memory
    
    sub al, value1       ; substract from value2 to value1
    add al, 48           ; *
    
    
    mov Substraction, al ; store result in memory
    
    lea dx, msg          ; get the start address
    mov ah,9
    int 21h              ; print the msg until $
    
    mov ah,4ch           ; return to dos
    int 21h
    main endp
end main
