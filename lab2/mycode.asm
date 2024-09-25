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
mov bx,3
add ax,bx
mov bx,3
mov cx,1
sub bx,cx
mul bx
mov bl,5
mov cl,3
add bl,cl
mov cl,2
add bl,cl 
mov dx,ax
mov ax,1
mov bx,    

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP            
END MAIN