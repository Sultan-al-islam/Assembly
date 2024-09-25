.MODEL SMALL
.STACK 100H
.DATA
 x db 4
 y db 8

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
       
mov al,x
mov bl,y
 mul bl
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN