include irvine32.inc

.data
    prompt1 BYTE "Enter the first number: ", 0
    prompt2 BYTE "Enter the second number: ", 0
    newline BYTE 10, 13, 0   ; Newline character sequence
    num1 DWORD ?
    num2 DWORD ?
    sum DWORD ?

.code
main PROC
    ; Prompt the user to enter the first number
    mov edx, OFFSET prompt1
    call WriteString
    call ReadInt
    mov num1, eax   ; Store the first number

    ; Prompt the user to enter the second number
    mov edx, OFFSET prompt2
    call WriteString
    call ReadInt
    mov num2, eax   ; Store the second number

    ; Add the numbers
    mov eax, num1
    add eax, num2
    mov sum, eax    ; Store the result in 'sum'

    ; Display the result
    mov edx, OFFSET newline
    call WriteString          ; Print newline
    mov edx, OFFSET prompt1
    call WriteString          ; Print prompt for result
    mov eax, sum
    call WriteDec             ; Print the result

    exit
main ENDP
END main
