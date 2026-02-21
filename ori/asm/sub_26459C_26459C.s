PUSH            {R4-R7,LR}
ADD             R5, R0, #0x12400
ADD             R5, R5, #0x358
MOV             R4, R0
LDR             R0, [R5]
SUB             SP, SP, #0xC
MOV             R7, R1
CMP             R0, #0
MOV             R6, R2
BEQ             loc_264628
LDR             R0, =0x12768
MOV             R2, #1
LDR             R0, [R0,R4]
ADD             R1, R0, #0x28 ; '('
MOV             R0, SP
BL              sub_14C614
LDR             R0, [R4,#8]
VLDR            S0, [SP,#0x20+var_20]
MOV             R3, R6
ADD             R0, R0, #0x64 ; 'd'
MOV             R2, SP
VLDR            S1, [R0]
MOV             R1, R7
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_20]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x20+var_1C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x20+var_18]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R5]
BL              sub_268D5C
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
