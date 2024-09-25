.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
mov ax,1
add ax,2

mov bl,3
sub bl,1

mul bl

mov bl,5
div bl
mov cx,ax
mov ax,1
mov bx,2
mul bx
mov bx,ax
mov ax,cx
add ax,3
add ax,2
sub ax,bx



    

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP            
END MAIN