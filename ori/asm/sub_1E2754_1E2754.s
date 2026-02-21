PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
LDRNE           R1, [R5]
CMPNE           R1, #0
BEQ             loc_1E27AC
LDRH            R6, [R0]
MOV             R4, #0
CMP             R6, #0
LDRHI           R7, =0x102
BLS             loc_1E27AC
LDR             R0, [R5,#8]
LDR             R1, [R5]
MOV             R2, R7
LDR             R0, [R0,#4]
ADD             R1, R1, R4,LSL#3
BL              sub_595A58
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R6, R4
BHI             loc_1E2784
LDR             R0, [R5,#4]
MOV             R4, #0
CMP             R0, #0
BEQ             loc_1E27C4
BL              sub_110D10
STR             R4, [R5,#4]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1E27D8
BL              sub_2FF5D4
STR             R4, [R5]
STR             R4, [R5,#0xC]
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             locret_1E2800
ADD             R0, R5, #0x10
BL              sub_1DFDA8
ADD             R0, R5, #0x10
NOP
BL              sub_10D33C
STR             R4, [R5,#8]
POP             {R4-R8,PC}
