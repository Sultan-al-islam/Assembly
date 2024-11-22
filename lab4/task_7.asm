.STACK 100H
.DATA 

msg DB "Enter a number: $" 

o db "Number is Odd $"
e db "Number is even $"
   

.CODE
MAIN PROC
; Initialize DS
MOV AX,@DATA
MOV DS,AX

lea dx,msg
mov ah,9
int 21h


mov ah,1
int 21h
mov bl,al

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

mov ax,0
mov al,bl

mov bl,2

div bl

mov cl,ah

cmp cl,0
je even

lea dx,o
mov ah,9
int 21h

jmp end


even:
lea dx,e
mov ah,9
int 21h





 



end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
