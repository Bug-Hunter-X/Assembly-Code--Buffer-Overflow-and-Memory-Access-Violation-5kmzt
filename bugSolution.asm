section .data
    array dd 10 dup(0) ; Declare an array of 10 dwords
    arraySize equ ($-array)/4 ; Calculate the size of the array in dwords

section .text
    global _start

_start:
    ; ... (other code) ...

    mov ecx, someIndex ; Get the index from somewhere

    ; Check for array bounds
    cmp ecx, arraySize
    jge outOfBounds

    mov ebx, array ; Base address of the array
    mov eax, [ebx+ecx*4] ; Access array element

    ; ... (use eax) ...

    jmp exitProgram

outOfBounds:
    ; Handle out-of-bounds error (e.g., print an error message and exit)
    ; ...

exitProgram:
    ; ... (exit program) ...