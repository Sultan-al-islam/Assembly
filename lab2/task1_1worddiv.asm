.MODEL SMALL
.STACK 100H
.DATA 

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 mov ax,0d4c0h
 mov dx,00001h
 mov bx,400
 div bx      

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN