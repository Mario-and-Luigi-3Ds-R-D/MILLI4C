MOV             R0, R1
MOV             R1, R2
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_2017AC
VSTR            S16, [R4,#0x10]
STR             R5, [R4,#0x14]
BL              sub_112D3C
LDR             R1, [R4,#4]
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R2, R5
POP             {R4-R6,LR}
B               sub_1136A4
VPOP            {D8}
POP             {R4-R6,PC}
