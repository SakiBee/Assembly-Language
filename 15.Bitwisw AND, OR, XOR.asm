.model small
.stack 100h
.data
a db 'bitwise AND is : $'
b db 10,13,'bitwize OR is : $'
c db 10,13,'bitwise XOR is : $' 
.code
main proc
    mov ax, @data
    mov ds, ax
       
    b_and:
    mov ah, 9
    lea dx, a
    int 21h
    
    mov bl, 101b
    and bl, 111b
    
    add bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    b_or:
    mov ah, 9
    lea dx, b
    int 21h
    
    mov bl, 101b
    or bl, 111b
    
    add bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    b_xor:
    mov ah, 9
    lea dx, c
    int 21h
    
    mov bl, 101b
    xor bl, 111b
    
    add bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    
