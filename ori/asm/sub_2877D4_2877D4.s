PUSH            {R4-R6,LR}
ADD             R4, R0, #0x2C ; ','
MOV             R2, #0
VPUSH           {D8}
LDR             R0, [R0,#0x14C]
ADD             R5, R0, R1
LDR             R1, [R4,#0x124]
CMP             R5, R1
MOVGE           R5, R1
BGE             loc_287804
CMP             R5, #0
MOVLE           R5, R2
VLDR            S16, =0.0
CMP             R0, R5
STR             R5, [R4,#0x120]
BGE             loc_28783C
LDR             R1, [R4,#0x10C]
CMP             R1, #0
BEQ             loc_28783C
LDR             R0, =off_6CE970
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
MOV             R2, #0
LDR             R0, [R0]
SUB             R0, R0, R3
BL              sub_503414
LDR             R1, [R4,#0x520]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x11C
TST             R1, #8
BEQ             loc_287868
LDR             R1, [R0,#0x178]
CMP             R1, R5
STRNE           R5, [R0,#0x178]
BLNE            sub_5B7E3C
VPOP            {D8}
POP             {R4-R6,PC}
STR             R5, [R0,#0x178]
MOV             R4, R0
VSTR            S16, [R0,#0x64]
MOV             R1, #1
ADD             R0, R0, #0x168
BL              sub_62D444
LDR             R1, [R4,#0x168]
MOV             R0, R4
MOV             R2, R5
BL              sub_5B71F4
MOV             R0, R4
NOP
BL              sub_5B7B9C
VPOP            {D8}
POP             {R4-R6,PC}
