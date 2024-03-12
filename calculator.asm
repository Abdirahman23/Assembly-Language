.386
.model flat, stdcall
.stack 100h

include irvine32.inc

.data

num1 DWORD ?
num2 DWORD ?
zum DWORD ?
zub DWORD ?

prompt BYTE "Enter two numbers: "
prompt2 BYTE "Addition of above 2 numbers is: ", 0
prompt3 BYTE "Subtraction of above 2 numbers is: ", 0


.code
main PROC

mov edx, OFFSET prompt
call WriteString

call ReadInt 
mov num1, eax
   
call ReadInt 
mov num2, eax

;calculating addition

mov eax,num1
mov ebx,num2

add eax,ebx

mov zum,eax

;calculating subraction

mov eax,num1
mov ebx,num2

sub ebx,eax

mov zub,eax

;out putting the sum
mov edx, OFFSET prompt2
call WriteString

mov eax, zum
call WriteDec

 call Crlf

;out putting the sum
mov edx, OFFSET prompt3
call WriteString

mov eax, zub
call WriteDec



call Dumpregs
    call ExitProcess   ; Exit the program
main ENDP

END main
