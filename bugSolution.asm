; Corrected version with bounds checking
mov esi, someValidValue ; Ensure esi is a valid index
mov ecx, someValidAddress ; Ensure this is a valid base address
mov ebx, someOtherValidValue ; Ensure that ebx is also a valid value

; Check array bounds
cmp esi, arraySize
jge handleError ; Handle out-of-bounds access

; Calculate the address safely
mov eax, ecx
add eax, esi ; Assuming each element is 4 bytes
mov eax, [eax]

; ... continue with code

handleError:
; Handle error condition appropriately (e.g., exit, report error, etc.)
; ... error handling code ...

arraySize dw 100 ; Example array size
someValidAddress dw 1000 ; Example valid memory address
someValidValue dw 50 ; Example valid index
someOtherValidValue dw 200 ; Example valid value