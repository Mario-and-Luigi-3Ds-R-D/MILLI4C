PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R0, [R0,#0x10]
CMP             R0, #0
LDRNE           R1, [R5,#4]
CMPNE           R1, #0
BEQ             locret_15ADD0
LDRH            R6, [R0]
MOV             R4, #0
CMP             R6, #0
LDRHI           R7, =0x102
BLS             locret_15ADD0
LDR             R0, [R5,#0xC]
LDR             R1, [R5,#4]
MOV             R2, R7
LDR             R0, [R0,#4]
ADD             R1, R1, R4,LSL#3
BL              sub_595A58
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R6, R4
BHI             loc_15ADA8
POP             {R4-R8,PC}
