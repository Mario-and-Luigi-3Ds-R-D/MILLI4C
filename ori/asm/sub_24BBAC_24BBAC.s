PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x2C]
SUB             SP, SP, #0x10
CMP             R0, #0
BEQ             loc_24BBF4
CMP             R0, #1
BNE             loc_24BBEC
ADD             R0, R4, #0x20C
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_24BBEC
MOV             R1, #2
MOV             R0, #1
STRB            R1, [R4,#0x2C]
STRB            R0, [R4,#0x1D]
ADD             SP, SP, #0x10
POP             {R4,PC}
LDR             R2, [R4,#0x20]
ADD             R0, R4, #0x20 ; ' '
CMP             R2, #0
BEQ             loc_24BC68
ADD             R0, R0, #4
STR             R0, [SP,#0x18+var_14]
STR             R2, [SP,#0x18+var_18]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x18+var_14
STR             R2, [SP,#0x18+var_10]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x18+var_18]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_24BC5C
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_24BC5C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, =off_6CE098
ADD             R1, R4, #0x58 ; 'X'
VLDR            S2, [R4,#0x54]
LDR             R0, [R0]
VLDM            R1, {S0-S1}
LDR             R0, [R0,#0x8C]
ADD             R1, R0, #0x58 ; 'X'
VLDM            R1, {S3-S5}
ADD             R1, R4, #8
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S4
VSTR            S2, [R4,#4]
VSTM            R1, {S0-S1}
VLDR            S5, [R0,#0x64]
ADD             R0, R0, #0x68 ; 'h'
VLDR            S2, [R4,#0x5C]
VLDR            S0, [R4,#0x54]
VLDR            S1, [R4,#0x58]
ADD             R4, R4, #0x10
VLDM            R0, {S3-S4}
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTM            R4, {S0-S2}
ADD             SP, SP, #0x10
POP             {R4,PC}
