               ; title: taking a 3 characters string and shoeing them as first second third in each line

.model small
.data
msg db 0ah,0dh,"Enter three characters initials: $"
c1 db ?,0ah,0dh
c2 db ?,0ah,0dh
c3 db ?,'$'
.code
main proc
    mov ax,@data ;initialze ds
    mov ds,ax  
    
    mov ah,9 ; display msg
    lea dx,msg
    int 21h  
    
    mov ah,1 ; read & store 1st char.
    int 21h 
    
    mov c1,al   
    
    int 21h ; read & store 2nd char.
    mov c2,al
    
    int 21h ; read & store 3rd char.
    mov c3,al   
    
    mov ah,2 ; display enter
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h     
    
    mov ah,9 ; display message from c1 until $
    lea dx,c1
    int 21h    
    
    mov ah,4ch ; return to dos
    int 21h
    main endp
end main
