.model small
.stack 100h
.data
    str1 db 'ENTER A HEX DIGIT: $'
    str2 db 0ah,0dh,'IN DECIMAL IT IS 1'
    ans db ?
    str3 db '$'
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,str1
    int 21h     
    
    ;convert hex to decimal
    mov ah,1
    int 21h
    sub al,11h
    mov ans,al
    
    mov ah,9
    lea dx,str2
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main
