.STACK 100H
.DATA 

msg DB "Enter a Charecter: $" 

msg2 db "The Cherecter is Vowel$"

msg3 db "The Cherecter is consonent$"

   

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


cmp bl,"A"
je vowel

cmp bl,"E"
je vowel

cmp bl,"I"
je vowel

cmp bl,"O"
je vowel

cmp bl,"U"
je vowel

cmp bl,"a"
je vowel

cmp bl,"e"
je vowel

cmp bl,"i"
je vowel

cmp bl,"o"
je vowel

cmp bl,"u"
je vowel


mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,msg3
mov ah,9
int 21h 

jmp end
        
        
vowel:
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

lea dx,msg2
mov ah,9
int 21h






end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
