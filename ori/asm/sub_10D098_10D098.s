PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDRH            R0, [R0,#0xA]
MOV             R4, #0
CMP             R0, #0
MOVHI           R7, #4
BLS             loc_10D0F8
LDR             R0, [R5,#0xC]
ADD             R1, R7, R4,LSL#4
MOV             R2, #4
ADD             R0, R0, R1
MOV             R1, R6
BL              sub_116D2C
CMP             R0, #0
NOP
BEQ             loc_10D0E4
MOV             R0, R4
POP             {R4-R8,PC}
LDRH            R0, [R5,#0xA]
ADD             R1, R4, #1
UXTH            R4, R1
CMP             R0, R4
BHI             loc_10D0B8
MOV             R0, #0xFFFFFFFF
POP             {R4-R8,PC}
