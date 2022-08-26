;Here Password is SakiBee
;Password is hide in the output dialog box
;Just Type SakiBee correctly. It will Show Password is Correct
;Else it will show Wrong password


.model small
.stack 100h
.data
a db 'Enter your password $'
ok db 10,13,'Password is Correct $'
notok db 10,13,'Wrong password $'
pass db 'SakiBee$'
pass1 dw 7

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, pass1
    mov bx, offset pass
    
    mov ah, 9
    lea dx, a
    int 21h
    
    lev1:
    mov ah, 8     ; hide input
    int 21h
    
    cmp al,[bx]
    jne lev2
    inc bx
    
    loop lev1
    
    mov ah, 9
    lea dx, ok
    int 21h
    jmp exit
    
    lev2:
    mov ah, 9
    lea dx, notok
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main