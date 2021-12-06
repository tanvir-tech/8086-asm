.model small
.stack 100h
.data
.code
main proc
    mov cx,4
    
    mov ah,2
    mov dl,56
    
    l1:
    int 21h
    dec dl
    dec dl
    loop l1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
