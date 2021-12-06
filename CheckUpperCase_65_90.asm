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
    
    ;check between 65 and 90
    cmp bl,65
    jge l1
    jmp exit

    l1:
    cmp bl,90
    jle l2
    jmp exit
    
    
    l2:                ;print 
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
