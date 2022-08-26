                                       .model small
.stack 100h
.data
msg db 'predefined message one!$'
msg1 db 'predefined message two!$'
msg2 db 'predefined message three!$'

.code
main proc

    mov ax,@data 
    mov ds,ax
    
    mov ah,2   
    mov dl,0dh 
    int 21h    
    mov dl,0ah 
    int 21h    
    
    lea dx,msg
    mov ah,9   ;display string function
    int 21h
    mov ah,2   ;display character function
    mov dl,0dh ;carriage return
    int 21h    ;execute
    mov dl,0ah ;line feed
    int 21h    ;execute
    
    mov ah,2   ;display character function
    mov dl,0dh ;carriage return
    int 21h    ;execute
    mov dl,0ah ;line feed
    int 21h    ;execute
    
    
    lea dx,msg1
    mov ah,9   ;display string function
    int 21h
    
    mov ah,2   ;display character function
    mov dl,0dh ;carriage return
    int 21h    ;execute
    mov dl,0ah ;line feed
    int 21h    ;execute
    
    mov ah,2   ;display character function
    mov dl,0dh ;carriage return
    int 21h    ;execute
    mov dl,0ah ;line feed
    int 21h    ;execute
    
    
    lea dx,msg2
    mov ah,9   ;display string function
    int 21h
    
    mov ah,4ch ;return to dos
    int 21h
    
    main endp
end main
