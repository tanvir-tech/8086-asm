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

    cmp bl,48
    jl l1
    jg l2
    je l3
    
    l2:
    mov ah,2
    mov dl,"1"
    int 21h
    jmp exit
    
    l1:
    mov ah,2
    mov dl,'-'
    int 21h
    mov dl,'1'
    int 21h
    jmp exit
    
    l3:
    mov ah,2
    mov dl,"0"
    int 21h
    jmp exit

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
