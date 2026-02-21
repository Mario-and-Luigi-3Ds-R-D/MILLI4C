CMP             R0, #0
BXEQ            LR
PUSH            {R4-R10,LR}
ADD             R5, R0, #0x5D0
MOV             R8, R0
MOV             R9, R1
MOV             R6, R5
MOV             R7, #4
MOV             R4, #0
MOV             R2, R6
MOV             R1, R9
MOV             R0, R5
BL              sub_1169FC
ADD             R4, R4, #1
CMP             R4, R7
ADD             R6, R6, #0xC
ADD             R5, R5, #0xC
BLT             loc_27D708
LDR             R0, [R8,#0x6FC]
MOV             R1, R9
BL              sub_27D6E4
POP             {R4-R10,PC}
