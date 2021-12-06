.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48  ; ascii-symbol to decimal
    
    mov ah,1
    int 21h
    sub al,48  ; ascii-symbol to decimal
    
    mul bl     ; al is multiplied by bl
    mov bl,al  ; result moved from al to bl
    add bl,48  ; decimal to ascii-symbol
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
