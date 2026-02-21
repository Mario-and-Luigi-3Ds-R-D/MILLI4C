PUSH            {R4-R10,LR}
MOV             R6, R0
SUB             SP, SP, #0x10
MOV             R7, #0
LDR             R0, [R0,#0x48]
LDR             R5, [R6,#0x44]
CMP             R0, R5
BEQ             loc_27E310
LDR             R8, =off_6CE970
LDR             R10, =0x5D9
MOV             R9, #1
LDR             R4, [R5]
MOV             R3, #1
ADD             R2, SP, #0x30+var_2C
MOV             R1, R10
VLDR            S2, [R4,#0x24]
VLDR            S5, [R4,#0x30]
VLDR            S1, [R4,#0x28]
VLDR            S4, [R4,#0x34]
VLDR            S0, [R4,#0x2C]
VLDR            S3, [R4,#0x38]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S3
VSTR            S2, [SP,#0x30+var_2C]
VSTR            S1, [SP,#0x30+var_28]
VSTR            S0, [SP,#0x30+var_24]
LDR             R0, [R8]
STR             R7, [SP,#0x30+var_30]
BL              sub_52AEA8
STRB            R7, [R4,#0xF2]
STRB            R9, [R4,#0x3F4]
LDR             R0, [R6,#0x48]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_27E2AC
STRB            R7, [R6,#0x1C]
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
