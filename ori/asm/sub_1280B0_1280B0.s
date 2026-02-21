PUSH            {R4-R8,LR}
MOV             R5, R1
LDR             R6, =dword_6D2418
LDR             R1, =0x80000056
LDR             R7, =0xF02C0
LDR             R2, =0xFF02C1
LDR             R4, [R6]
STM             R4!, {R1,R7}
MOV             R1, R0
MOV             R0, R4
BL              sub_127384
LDR             R0, =0x8000005A
LDR             R2, =0xBF02C1
MOV             R1, R5
STR             R0, [R4,#0x48]!
STR             R7, [R4,#4]!
ADD             R4, R4, #4
MOV             R0, R4
BL              sub_127348
ADD             R0, R4, #0x38 ; '8'
STR             R0, [R6]
POP             {R4-R8,PC}
