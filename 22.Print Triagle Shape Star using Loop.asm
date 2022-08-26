; Printing Triagle Shape stars
; **********
; *********
; ********
; *******
; ******
; ****
; ***
; **
; *  

.model small
.stack 100h
.code
main proc
    mov cx, 10
    lev:
    mov bx, cx
    
    lev1:
    mov ah, 2
    mov dl, '*'
    int 21h
    loop lev1
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov cx, bx
    loop lev
    
    mov ah, 4ch
    int 21h
    main endp
end main
