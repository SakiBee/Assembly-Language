

.model small
.stack 100h
.data
msg db 'Hello world!$'

.code
main proc

    mov AX,@DATA ;initialize DS
    mov ds, ax
    
    mov ah,2   ;display character function
    mov dl,0dh ;carriage return
    int 21h    ;execute
    mov dl,0ah ;line feed
    int 21h    ;execute
    
    
    lea dx, msg
    mov ah, 9   ;display string function
    int 21h
    
    mov ah,4ch ;return to DOS
    int 21h
    
    main endp
end main
