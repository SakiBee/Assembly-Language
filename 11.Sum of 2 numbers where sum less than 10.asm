
; title: sum of two digits less than 10

.model small
.data
msg db 0ah,0dh,'the sum of '
value1 db ?,' and '
value2 db ?,' is '
sum db ?,'$'

.code
main proc
    mov ax, @data ; initialize ds
    mov ds, ax 
    
    mov ah, 2     ; display '?'
    mov dl, '?'
    int 21h
    
    mov ah, 1
    int 21h      ; read 1st digit
    mov value1, al    ; store it in memory
    
    int 21h      ; read 2nd digit
    mov value2, al    ; store it in memory
    
    add al, value1    ; add the two numbers
    sub al, 48   ; *
    
    
    mov sum, al   ; store result in memory
    
    lea dx, msg   ; get the start address
    mov ah, 9
    int 21h      ; print the msg until $
    
    mov ah,4ch   ;return to dos
    int 21h
    main endp
end main
