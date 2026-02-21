PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
ADD             R0, R0, #0xAC
BL              sub_249E4C
MOV             R2, R6
MOV             R1, R5
ADD             R0, R4, #0x58 ; 'X'
BL              sub_5873EC
MOV             R2, R6
MOV             R1, R5
ADD             R0, R4, #0xC00
POP             {R4-R6,LR}
ADD             R0, R0, #0x1EC
NOP
