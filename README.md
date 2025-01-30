# Assembly Memory Access Error
This repository demonstrates a potential memory access error in assembly code. The instruction `mov eax, [ebx+esi*4+0x10]` calculates a memory address and attempts to access it. If this calculated address is invalid (e.g., outside allocated memory or in a protected region), it can lead to a segmentation fault or other unexpected behavior.

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` shows a corrected version with improved memory access checks and boundary validation.