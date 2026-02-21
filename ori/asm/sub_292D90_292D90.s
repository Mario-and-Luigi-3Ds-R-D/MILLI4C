CMP             R2, #0
BXEQ            LR
PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
MOV             R5, R1
MOV             R2, #1
ADD             R0, SP, #0x20+var_1C
BL              sub_14C614
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0x20+var_1C]
LDR             R1, =0x12C14
MOV             R3, R5
LDR             R0, [R0,#0x14]
ADD             R0, R0, #0x308
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x20+var_18]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_18]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x20+var_14]
MOV             R0, #0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x20+var_14]
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4,#4]
LDR             R2, [R0,#0x14]
LDR             R1, [R1,R0]
LDR             R2, [R2,#0xB0]
MUL             R1, R2, R1
ADD             R2, SP, #0x20+var_1C
BL              sub_294FB8
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
