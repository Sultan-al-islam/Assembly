.MODEL SMALL
.STACK 100H
.DATA

A dw 4
B dw 2
C dw 3
D dw 1
E dw 2

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
mov ax,A
mov bx,B
add ax,bx
mov bx,C
mov cx,D
sub bx,cx
mul bx
mov cx,E
div cx       

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN