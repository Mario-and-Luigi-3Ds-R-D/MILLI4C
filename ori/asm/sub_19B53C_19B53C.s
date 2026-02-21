PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8}
VMOV.F64        D8, D0
LDR             R0, [R0,#0x1B4]
TST             R0, #0x800000
BNE             loc_19B5C4
ORR             R0, R0, #0x800000
STR             R0, [R4,#0x1B4]
LDR             R0, [R4,#0xB8]
LDR             R7, =0x20031
CMP             R0, #0
BEQ             loc_19B5A8
BL              sub_5CA52C
CMP             R0, #0
BEQ             loc_19B5A8
LDR             R5, [R4,#0xB8]
MOV             R0, R7
BL              sub_146084
LDR             R0, [R0]
LDR             R1, [R5,#0x20]
CMP             R0, R1
BNE             loc_19B5A8
LDR             R0, [R4,#0xB8]
MOV             R1, #0x18
BL              sub_234A48
VMOV.F32        S1, S17
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R6
MOV             R0, R7
BL              sub_1459F8
STR             R0, [R4,#0xB8]
VPOP            {D8}
POP             {R4-R8,PC}
