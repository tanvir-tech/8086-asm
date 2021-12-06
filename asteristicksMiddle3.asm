.model small
.stack 100h
.data
    prompt db 10,13,'Enter three initials : $'
    asterisks db '***********',0dh,0ah,'$'
    next_line db 10,13,"$"
.code
main proc
    mov ax, @data ; initialize ds
    mov ds, ax 
    
    mov ah, 2 ; display "?"
    mov dl, "?"
    int 21h

    lea dx, prompt ; load and display the string prompt
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    mov bl, al
    int 21h
    mov bh, al
    int 21h
    mov cl, al

    lea dx, next_line
    mov ah, 9
    int 21h
    int 21h

    lea dx, asterisks ; load the string asterisks
    mov ah, 9
    int 21h ; display the string asterisks 5 times
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov asterisks+4, bl ; place the three initials in the position
    mov asterisks+5, bh ; of middle asterisks i.e. 4,5,6.
    mov asterisks+6, cl
    int 21h ; display the modified string asterisks
    mov asterisks+4, "*" ; place the "*" back in their original
    mov asterisks+5, "*" ; position
    mov asterisks+6, "*"

    int 21h ; print the string asterisks 5 times
    int 21h
    int 21h
    int 21h
    int 21h

    mov ah, 2
    mov dl, 7h
    int 21h

    mov ah, 4ch
    int 21h
    main endp
end main
