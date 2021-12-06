.model small
.stack 100h
.data
.code
main proc
    mov cx,80
    
    mov ah,2
    mov dl,'*'
    
    l1:
    int 21h
    loop l1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
