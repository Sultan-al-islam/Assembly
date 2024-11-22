.MODEL SMALL
.STACK 100H
.DATA
msg_o DB "o$" 
msg_e DB "e$"   

.CODE
MAIN PROC
; Initialize DS
MOV AX,@DATA
MOV DS,AX


MOV AH,1
INT 21H
SUB AL,30H
MOV BL,AL


MOV AH,2
MOV DL,0DH
INT 21H
MOV DL,0AH
INT 21H

MOV AL,BL


CMP AL,1
JE odd          
CMP AL,3
JE odd          


CMP AL,2
JE even      
CMP AL,4
JE even     

JMP end

odd:
LEA DX,msg_o        
JMP display_message  

even:
LEA DX,msg_e        

display_message:
MOV AH,09H           
INT 21H             
JMP end        

end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
