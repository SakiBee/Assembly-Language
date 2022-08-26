.model small
.stack 100h
.data
string db 'Here is your beep sound. Listen carefully $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, string
    int 21h
    
    mov ah, 2
    mov dl, 07     ; for beep soud
    int 21h        ; first time
    int 21h        ; second time
                   ; you can make it more times
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main


