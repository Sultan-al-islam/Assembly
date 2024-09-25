.MODEL SMALL
.STACK 100H
.DATA

a db "Please enter a number: $"
b db "Please enter another number: $" 
c db "sub=$"

 
.CODE 
MAIN PROC 
;iniitialize DS
MOV AX,@DATA 
MOV DS,AX 
;enter your code here

lea dx,a
mov ah,9
int 21h


mov ah,1
int 21h
sub al,30h     

mov bl,al


mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,b
mov ah,9
int 21h


mov ah,1
int 21h 
sub al,30h
mov cl,al 





mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h 

lea dx,c
mov ah,9
int 21h

sub bl,cl
add bl,30h

mov ah,2
mov dl,bl
int 21h


;exit to DOS 
 
MOV AX,4C00H
INT 21H 
MAIN ENDP
END MAIN