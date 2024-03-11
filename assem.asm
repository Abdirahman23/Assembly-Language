.386
.model flat, stdcall
.stack 100h

include irvine32.inc

.data

abudi BYTE "computer organization and assembly language is fun ", 0

.code
main PROC
MOV edx, 10

looper:
   MOV ecx , SIZEOF abudi
   MOV esi,  OFFSET abudi
   abduiii:
      MOV eax, [esi]
      Call writechar
      add esi, 1 
      loop abduiii
   call crlf
   sub edx, 1
   MOV ecx, edx
loop looper


call Dumpregs
    call ExitProcess   ; Exit the program
main ENDP

END main
