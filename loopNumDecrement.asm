.model small
.stack 100h
.code
main proc
    mov cx,9
    
    mov ah,2
    mov dl,57
    
    l1:
    int 21h
    dec dl
    loop l1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
