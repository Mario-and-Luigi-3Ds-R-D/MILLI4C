PUSH            {R4-R7,LR}
MOV             R5, R0
ADD             R6, R0, #8
LDR             R4, [R0,#0x14]
LDR             R0, =off_6CE970
MOV             R7, #0
SUB             SP, SP, #0x14
MOV             R3, R7
LDR             R0, [R0]
MOV             R2, R7
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x4E4
BL              sub_10A358
CMP             R0, #0
BEQ             loc_29238C
STR             R7, [SP,#0x28+var_28]
LDR             R2, [R5,#0x14]
LDR             R1, [R5,#0x1C]
ADD             R3, R2, #0x4C ; 'L'
ADD             R2, R5, #0x12800
ADD             R2, R2, #0x1C
BL              sub_28F81C
MOV             R7, R0
LDR             R0, [R6,#8]
ADD             R1, R6, #4
CMP             R0, R1
BNE             loc_292404
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_2923B8
BL              sub_28F9F4
NOP
NOP
BL              sub_300FD4
STR             R7, [R6]
ADD             R0, R4, #0x4C ; 'L'
VLDR            S0, [R4,#0x54]
VLDR            S3, [R4,#0x304]
VLDR            S4, [R4,#0x300]
VLDR            S5, [R4,#0x2FC]
VADD.F32        S0, S0, S3
VLDM            R0, {S1-S2}
ADD             R0, SP, #0x28+var_24
ADD             R1, SP, #0x28+var_24
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x28+var_1C]
VSTM            R0, {S1-S2}
LDR             R0, [R5,#8]
VLDR            S0, [R4,#0x2F8]
BL              sub_28ECA0
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
LDR             R2, [R6,#4]
ADD             R1, R6, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R6,#4]
STR             R1, [R6,#8]
B               loc_2923B8
