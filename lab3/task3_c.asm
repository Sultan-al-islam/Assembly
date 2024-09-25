.MODEL SMALL
.STACK 100H
.DATA
a db "Enter an loewrcase letter: $"
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX

   
    lea dx,a
    mov ah, 9
    int 21h

    
    mov ah, 1
    int 21h
    mov bl, al    

    
    sub bl, 20h   

   
    mov ah, 2
    mov dl, bl    
    int 21h

    
    mov ax, 4C00h
    int 21h

MAIN ENDP
END MAIN
