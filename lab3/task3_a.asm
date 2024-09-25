.MODEL SMALL
.STACK 100H
.DATA
a db "Enter a character: $"
.CODE
MAIN PROC
    ; initialize DS
    MOV AX,@DATA
    MOV DS,AX

   
    lea dx,a
    mov ah, 9
    int 21h

   
    mov ah, 1
    int 21h
    mov bl, al    

   
    mov ah, 2
    mov dl, bl      
    int 21h

    ; Exit to DOS
    mov ax, 4C00h
    int 21h

MAIN ENDP
END MAIN
