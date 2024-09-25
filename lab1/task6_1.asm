.MODEL SMALL
.STACK 100H
.DATA 

A dw 4
B dw 6
C dw 3

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 mov ax,A
 mov bx,B
 mov cx,C
 sub bx,ax
 mov ax,bx
       

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN