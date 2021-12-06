.model small
.stack 100h
.data
a db 'Lower case $'
b db 'Upper case $'
main proc
    ;data segment initialize 
    mov ax,@data
    mov ds, ax
              
    ;string output          
    mov ah,9
    lea dx,a
    int 21h 
    
    ;input
    mov ah,1  
    int 21h
    mov bl,al
    
    
    ;newline
    mov ah,1
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;string output
    mov ah,9
    lea dx,b
    int 21h
    
    
    ;convert
    sub bl,32
              
              
    ;output
    mov ah,2 
    mov dl,bl
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
