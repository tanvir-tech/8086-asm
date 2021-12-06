.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,49
    je l1
    
    cmp bl,51
    je l1
    jmp l2
    
    l1:
    mov ah,2
    mov dl,'o'
    int 21h
    jmp exit
    
    l2:
    cmp bl,50
    je l3 
    cmp bl,52
    je l3
    jmp exit
    
    
    l3:
    mov ah,2
    mov dl,"e"
    int 21h
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
