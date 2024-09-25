.MODEL SMALL
.STACK 100H

.DATA

sumMsg db "The sum of $"
andMsg db " and  $"
isMsg db " is $"

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX

   

   
    mov ah, 1
    int 21h
    sub al, 30h     
    mov bl, al      

    
    mov bh, al
    add bh, 30h

      
    mov ah, 1
    int 21h
    sub al, 30h     
    mov cl, al      

    
    mov ch, al
    add ch, 30h

    
    mov ah, 2
    mov dl, 0dh     
    int 21h
    mov dl, 0ah    
    int 21h

    
    lea dx, sumMsg
    mov ah, 9
    int 21h

  
    mov ah, 2
    mov dl, bh      
    int 21h

    
    lea dx, andMsg
    mov ah, 9
    int 21h

   
    mov ah, 2
    mov dl, ch    
    int 21h

    
    lea dx, isMsg
    mov ah, 9
    int 21h

    
    add bl, cl

   
    add bl, 30h

    
    mov ah, 2
    mov dl, bl
    int 21h

    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN
