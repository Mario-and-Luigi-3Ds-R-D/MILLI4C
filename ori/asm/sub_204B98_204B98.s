PUSH            {R4-R6,LR}
MOV             R4, R1
ADD             R1, R2, #0xC
VPUSH           {D8}
LDM             R1, {R1,R12}
LDR             R3, [R2,#8]
LDR             R5, [R2,#0x18]
VLDR            S16, [R2,#0x74]
UXTH            R1, R1
UXTH            R2, R12
AND             R6, R3, #0xFF
BL              sub_20DF2C
VMOV.F32        S1, S16
MOV             R0, R6
BL              sub_1F4604
CMP             R0, #0
BEQ             loc_204BE8
LDR             R0, [R4,#4]
ADD             R0, R0, R5
STR             R0, [R4,#4]
MOV             R0, #0
VPOP            {D8}
POP             {R4-R6,PC}
