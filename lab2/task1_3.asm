.MODEL SMALL
.STACK 100H
.DATA 
x db 8
y db 4
z db 2


.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
mov al,x
mov bl,y
mul bl
mov cl,z
div cl      

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN