.MODEL SMALL
.STACK 100H
.DATA
X db 4
Y db 8

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
       
mov al,X
mov bl,Y
mul bl
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN