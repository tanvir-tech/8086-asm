.model small
.stack 100h

.data
a db 'Biggest Number $'

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

    ;input two numbers
    mov ah,1
    int 21h
    mov bl,al
    int 21h 
    mov bh,al
    
       
    
    ;compare 
    biggest:
    cmp bl,bh
    jg bigBL
    jmp smallBL
    
    
    smallBL:
    mov ah,2
    mov dl,bh 
    int 21h
    jmp exit
           
           
    bigBL:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    

    exit: 
    ;input single character
    mov ah,1
    int 21h
    mov bl,al 
    
    ;return control to OS
    mov ah,4ch
    int 21h
    main endp
end main
