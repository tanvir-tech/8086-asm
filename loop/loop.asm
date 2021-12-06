.model small
.stack 100h

.data
a db 'Loop coding $'

main proc
    ;data segment initialize
    mov ax,@data
    mov ds, ax  
    
    ;string output
    mov ah,9
    lea dx,a
    int 21h

    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;counter
    mov cx,10
    mov ah,2
    mov dl,'T'
    
    ;loop activity
    LP1:
    int 21h
    inc dl
    loop LP1  
    
    
    ;input single character
    mov ah,1
    int 21h
    mov bl,al



    exit:
    mov ah,4ch
    int 21h
    main endp
end main
