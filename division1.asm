.model small
.stack 100h
.data
.code
main proc
    mov al,7       ;dividend
    mov bl,2       ;divisor
    
    div bl
    mov bx,ax
    
    mov ah,2
    mov dl,bl       ;Quotient/ vagfol
    add dl,48
    int 21h
    mov dl,bh       ;remainder
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
