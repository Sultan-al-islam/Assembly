.MODEL SMALL
.STACK 100H
.DATA
x dw 10
y db 5

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
mov ax,x
mov bl,y
div bl      

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN