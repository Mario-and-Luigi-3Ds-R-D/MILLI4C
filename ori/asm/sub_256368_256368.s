PUSH            {R4,R5,LR}
MOV             R4, R0
SUB             SP, SP, #0x14
MOV             R0, #1
STRB            R0, [R4,#0x1D]
VLDR            S1, [R4,#0x44]
VLDR            S5, [R4,#0x50]
VLDR            S0, [R4,#0x48]
VLDR            S4, [R4,#0x54]
VLDR            S2, [R4,#0x4C]
VLDR            S3, [R4,#0x58]
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VADD.F32        S2, S2, S3
LDR             R0, =off_6CE970
MOV             R5, #0
LDR             R1, =0x5D9
MOV             R3, #1
ADD             R2, SP, #0x20+var_1C
VSTR            S1, [SP,#0x20+var_1C]
VSTR            S0, [SP,#0x20+var_18]
VSTR            S2, [SP,#0x20+var_14]
LDR             R0, [R0]
STR             R5, [SP,#0x20+var_20]
BL              sub_52AEA8
STRB            R5, [R4,#0x112]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
