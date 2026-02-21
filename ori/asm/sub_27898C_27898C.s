PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x10C]
MOV             R5, R1
MOV             R6, R2
BL              sub_2810DC
LDR             R0, [R4,#0x118]
MOV             R2, R6
MOV             R1, R5
BL              sub_274100
LDR             R7, =off_6CE970
CMP             R5, #4
CMPNE           R5, #3
MOVEQ           R6, #1
BNE             loc_278A2C
LDR             R1, [R7]
LDR             R0, [R4,#0x124]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
ADD             R2, R0, #0x400
VLDR            S0, [R1,#(loc_10C4EC - 0x10C400)]
VLDR            S2, [R2,#0x15C]
LDR             R1, [R0,#0x1EC]
VLDR            S1, [R0,#0x1F0]
VMUL.F32        S0, S0, S2
LDR             R0, =off_6CDF98
STR             R1, [SP,#0x28+var_28]
VSTR            S1, [SP,#0x28+var_24]
MOV             R1, R5
VSTR            S0, [SP,#0x28+var_20]
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
BL              sub_5CCAC4
LDR             R12, [R4,#0x100]
MOV             R1, R0
MOV             R3, R6
MOV             R2, SP
MOV             R0, R12
BL              sub_27FF14
CMP             R5, #0
BEQ             loc_278A88
LDR             R12, [R7]
LDR             R0, [R4,#0x124]
ADD             R2, R12, #0x100000
ADD             R1, R0, #0x400
ADD             R2, R2, #0xC400
VLDR            S2, [R1,#0x15C]
VLDR            S0, [R2,#(loc_10C4EC - 0x10C400)]
LDR             R1, [R0,#4]
VLDR            S1, [R0]
VMUL.F32        S0, S0, S2
VSTR            S1, [SP,#0x28+var_20]
STR             R1, [SP,#0x28+var_1C]
MOV             R0, #0
MOV             R2, #2
MOV             R3, R0
MOV             R1, R5
VSTR            S0, [SP,#0x28+var_18]
STMEA           SP, {R0,R2}
ADD             R2, SP, #0x28+var_20
MOV             R0, R12
BL              sub_52C114
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
