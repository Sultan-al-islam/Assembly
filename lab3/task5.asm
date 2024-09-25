.MODEL SMALL
.STACK 100H

.DATA
prompt db "Enter Three Initials: $"


.CODE
MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX

    
    lea dx, prompt
    mov ah, 9
    int 21h

    
    mov ah, 1     
    int 21h        
    mov bh, al      

    

    
    mov ah, 1
    int 21h
    mov bl, al     

  

   
    mov ah, 1
    int 21h
    mov cl, al      

    mov ah, 2
    mov dl, 0dh    
    int 21h
    mov dl, 0ah  
    int 21h
    
    mov al, 2 ; display character function
    mov dl,bh  ; character is '?'
    int 21h ; display character 
    
     mov ah, 2
    mov dl, 0dh    
    int 21h
    mov dl, 0ah  
    int 21h
    
    mov al, 2 ; display character function
    mov dl,bl  ; character is '?'
    int 21h ; display character
    
     mov ah, 2
    mov dl, 0dh    
    int 21h
    mov dl, 0ah  
    int 21h
    
    mov al, 2 ; display character function
    mov dl,cl  ; character is '?'
    int 21h ; display character
   

    ; Exit to DOS
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN
