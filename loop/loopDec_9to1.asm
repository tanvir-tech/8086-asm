.model small
.stack 100h
.data
.code
main proc
    
    mov ah,2
    mov dl,57
    
    while_:
    int 21h
    dec dl
    
    cmp dl,49
    jge while_
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
