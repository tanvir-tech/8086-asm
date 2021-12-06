.model small
.stack 100h

.data
a db 'Lower case $'
b db 'Upper case $'

main proc
    ;data segment initialize
    mov ax,@data
    mov ds, ax

    ;new line
    mov ah,1
    mov dl,10
    int 21h
    mov dl,13
    int 21h



    exit:
    mov ah,4ch
    int 21h
    main endp
end main
