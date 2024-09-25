.MODEL SMALL
.STACK 100H
.DATA

a db "Please enter a cherecter: $"
b db "Cheracter is: $"


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
lea dx,a
mov ah,9
int 21h

MOV AH,1
INT 21h
mov bl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

lea dx,b
mov ah,9
int 21h 

MOV AH,2  
MOV DL,bl 
INT 21h 



     
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN