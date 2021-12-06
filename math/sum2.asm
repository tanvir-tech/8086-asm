.model small
.stack 100h
.data
    msg1 db 10,13,'First No $'
    msg2 db 10,13,'Second No $'
    msg3 db 10,13,'Sum $',10,13 
    a db 0
    b db 0
    c db 0
    
.code 
main proc  
    mov ax,@data
    mov ds,ax 
    
    ;input first no
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al   
    
    ;input second no
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;sum
    
    mov al,a
    mov ah,0
    add al,b
    aaa 
    
    add al,48
    add ah,48
    mov bx,ax
    
    
    ;Output 
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
