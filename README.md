# 8086-asm
## 8086 assembly code

### template

.model small\
.stack 100h \

.data\
a db 'Lower case $'\
b db 'Upper case $'
               
               

main proc\
    ;data segment initialize \
    mov ax,@data \
    mov ds, ax 
              
    
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main

