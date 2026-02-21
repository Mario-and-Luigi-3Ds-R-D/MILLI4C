PUSH            {R4-R6,LR}
SUB             SP, SP, #0x18
MOV             R4, R0
ADD             R1, SP, #0x28+var_1C
BL              sub_5CBB0C
ADD             R1, SP, #0x28+var_1C
ADD             R0, R4, #0x14
BL              sub_14E984
LDR             R6, =off_6CE098
ADD             R2, SP, #0x28+var_24
LDR             R1, [R6]
ADD             R0, R1, #0x6C ; 'l'
LDR             R3, [R1,#0x68]
STR             R0, [SP,#0x28+var_24]
STR             R3, [SP,#0x28+var_28]
LDR             R3, [R1,#0x70]
STR             R3, [SP,#0x28+var_20]
STR             R2, [R3]
STR             R2, [R1,#0x70]
LDR             R0, [SP,#0x28+var_28]
LDR             R0, [R0,#0xA74]
VLDR            S0, [R0,#0x2C]
LDR             R0, =0x129EC
LDR             R0, [R0,R1]
LDR             R1, [R1,#0x8C]
LDR             R0, [R0]
VLDR            S1, [R1,#0x18C]
LDR             R1, [SP,#0x28+var_20]
VLDR            S2, [R0,#0x90]
ADD             R0, SP, #0x28+var_24
VADD.F32        S1, S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R5, #1
MOVCS           R5, #0
CMP             R1, R0
BNE             loc_256FC0
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_256FC0
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x28+var_24]
CMP             R5, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_257004
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0xA4]
ADD             R0, R4, #0x14
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
