.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
       
mov ax,5
mov bx,3
mov cx,ax 
mov dx,bx

add ax,bx
sub ax,cx
add bx,cx
sub bx,dx

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN