.STACK 100H
.DATA
msg_yes DB "Divisible by both 5 and 11$"
msg_no DB "Not divisible by both 5 and 11$"

.CODE
MAIN PROC
; Initialize DS
MOV AX, @DATA
MOV DS, AX

   
MOV AX, 50        
MOV CX, AX          

mov DX, 0          
MOV BX, 5        
DIV BX        
CMP DX, 0      
JNE no        

    
MOV AX, CX      
mov DX, 0       
MOV BX, 11        
DIV BX              
CMP DX, 0       
JNE no              

  
LEA DX, msg_yes 
MOV AH, 9         
INT 21H
JMP end          

no:
LEA DX, msg_no    
MOV AH, 09H      
INT 21H

end:




    ; Exit to DOS
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN
