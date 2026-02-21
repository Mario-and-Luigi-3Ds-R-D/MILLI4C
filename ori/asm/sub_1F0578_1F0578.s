PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
MOV             R6, R3
CMP             R2, R6
MOV             R11, R0
LDR             R10, [SP,#0x30+arg_0]
MOV             R7, R1
MOV             R4, R2
BGE             loc_1F0608
ADD             R0, R4, R4,LSL#2
ADD             R5, R7, R0,LSL#2
LDR             R8, [R5,#0x10]
CMN             R8, #1
LDRNE           R0, [R5,#8]
CMPNE           R0, #0
MOVNE           R9, #0
BEQ             loc_1F05FC
BL              sub_5864A4
LDR             R0, [R0]
MOV             R1, #0
CMP             R0, #0
MOVEQ           R0, #0xCB
MOVNE           R0, #0x118
ADD             R2, R8, R0; int
LDR             R0, [R5,#0xC]
STRD            R0, R1, [SP,#0x30+var_30]; int
LDR             R3, [R5,#8]; int
LDR             R0, [R11,#0x10]; int
MOV             R1, R9; int
BL              sub_532898
CMP             R0, #0
NOP
BEQ             loc_1F0608
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1F059C
CMP             R10, #0
STRNE           R4, [R10]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
