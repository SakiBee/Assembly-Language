.model small
.stack 100h
.data
a db 'Take input from user $'
b db 10,13,'result is : $'      ; 10 -> newline 
.code                           ; 13 -> cerraige return
main proc
    mov ax, @data
    mov ds, ax
    
    proc1 proc                  ; function 1
        mov ah, 9               ; printing message a
        lea dx, a
        int 21h
        
        mov ah, 1               ; taking 2 input
        int 21h
        mov bl, al
        int 21h
        mov bh, al
        
        call proc2              ; calling function 2
        ret
        
        proc2 proc              ; function 2
            mov ah, 9
            lea dx, b
            int 21h
            
            add bl, bh          ; adding 2 values
            sub bl, 48
            
            mov ah, 2           ; printing sum
            mov dl, bl
            int 21h
            
            cmp bl, 13
            jmp exit
            
            ret
            
            exit:
            mov ah, 4ch
            int 21h   
            ; main endp          ; it does not need
end main
