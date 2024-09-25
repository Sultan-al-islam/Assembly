.MODEL SMALL
.STACK 100H
.DATA

x dw 200
y dw 600

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

mov ax,x  
mov bx,y
mul bx
    

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN