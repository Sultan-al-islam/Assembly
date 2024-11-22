.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here


mov ah,1
int 21h

mov cl,al

mov ah,1
int 21h

mov bl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

cmp cl,bl

jl my_line

mov ah,2
mov dl,bl
int 21h  

jmp end




my_line:
mov ah,2
mov dl,cl
int 21h

end:   
   
   
   
   
 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN