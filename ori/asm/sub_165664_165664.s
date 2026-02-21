PUSH            {R4-R6,LR}
MOV             R6, R3
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #8
MOV             R3, #0
LDR             R4, [SP,#0x20+arg_0]
VLDR            S16, [SP,#0x20+arg_4]
MOV             R2, R3
MOV             R0, #0xAB0
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1656AC
VSTR            S16, [SP,#0x20+var_20]
MOV             R3, R4
MOV             R2, R6
MOV             R1, R5
BL              sub_1C8174
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
