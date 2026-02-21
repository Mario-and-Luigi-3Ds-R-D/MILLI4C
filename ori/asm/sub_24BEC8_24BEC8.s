PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R5, R1
MOV             R6, #0
MOV             R1, #3
STRB            R6, [R0,#0x1D]
STRB            R1, [R0,#0x1E]
LDR             R1, =off_6BBADC
ADD             R2, R0, #0x24 ; '$'
STR             R1, [R0]
STR             R6, [R0,#0x20]
STR             R2, [R0,#0x28]
STR             R2, [R0,#0x24]!
ADD             R0, R0, #0xC
BL              sub_14F198
LDR             R8, =off_6CE098
MOV             R7, #1
SUB             R4, R0, #0x30 ; '0'
STRB            R7, [R0,#0x3F4]
LDR             R0, [R8]
MOV             R2, #0
LDR             R1, [R0,#0xAC]
ADD             R0, R4, #0x30 ; '0'
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x30 ; '0'
BL              sub_14C548
MOV             R1, #1
ADD             R0, R4, #0x30 ; '0'
BL              sub_14C450
MOV             R1, R5
ADD             R0, R4, #0x30 ; '0'
STRB            R7, [R4,#0x121]
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x30 ; '0'
BL              sub_14C3E8
LDR             R0, [R8]
VLDM            R5, {S0-S2}
LDR             R0, [R0,#0x8C]
ADD             R1, R0, #0x58 ; 'X'
VLDM            R1, {S3-S5}
ADD             R1, R4, #4
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VSTM            R1, {S0-S2}
MOV             R1, R4
VLDR            S5, [R0,#0x64]
ADD             R0, R0, #0x68 ; 'h'
VLDR            S1, [R5]
VLDR            S0, [R5,#4]
VLDR            S2, [R5,#8]
VADD.F32        S1, S1, S5
VLDM            R0, {S3-S4}
MOV             R0, SP
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VSTR            S1, [R4,#0x10]
VSTR            S0, [R4,#0x14]
VSTR            S2, [R4,#0x18]
STRB            R7, [R4,#0x1C]
STRB            R6, [R4,#0x2C]
ADD             R6, R4, #0x20 ; ' '
BL              sub_24AD24
LDR             R0, [R6]
MOV             R5, SP
MOV             R7, #0
CMP             R0, #0
BEQ             loc_24BFF4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
MOV             R1, R5
MOV             R0, R6
BL              sub_6292A8
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_24C03C
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_24C03C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R8,PC}
