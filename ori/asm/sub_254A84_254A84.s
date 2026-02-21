PUSH            {R4-R7,LR}
SUB             SP, SP, #0x1C
MOV             R6, R0
BL              sub_254C4C
LDR             R2, [R6,#0x68]
ADD             R1, R6, #0x6C ; 'l'
STR             R1, [SP,#0x30+var_2C]
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R6,#0x70]
ADD             R0, SP, #0x30+var_2C
STR             R2, [SP,#0x30+var_28]
STR             R0, [R2]
STR             R0, [R6,#0x70]
LDR             R0, [SP,#0x30+var_30]
BL              sub_259060
LDR             R1, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_254AE4
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_254AE4
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R2, [R6,#0x80]
ADD             R0, R6, #0x84
STR             R0, [SP,#0x30+var_20]
STR             R2, [SP,#0x30+var_24]
LDR             R2, [R6,#0x88]
ADD             R1, SP, #0x30+var_20
STR             R2, [SP,#0x30+var_1C]
STR             R1, [R2]
STR             R1, [R6,#0x88]
LDR             R0, [SP,#0x30+var_24]
BL              sub_14C4EC
LDR             R1, [SP,#0x30+var_1C]
ADD             R0, SP, #0x30+var_20
CMP             R1, R0
BNE             loc_254B48
LDR             R0, [SP,#0x30+var_24]
CMP             R0, #0
BEQ             loc_254B48
BL              sub_257494
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_20]
ADD             R7, R6, #0x12800
ADD             R5, R6, #0x12000
ADD             R7, R7, #0x1EC
STR             R1, [R0,#4]
ADD             R5, R5, #0x9F0
STR             R0, [R1]
LDR             R0, [R5]
LDR             R4, [R7]
CMP             R0, R4
BEQ             loc_254B8C
LDR             R0, [R4]
BL              sub_24A920
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_254B74
LDR             R1, =off_6CE970
LDR             R0, =0x19DEE8
VLDR            S1, =0.0039062
LDR             R1, [R1]
ADD             R0, R0, R1; loc_19DEE8
VLDR            S0, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R6,#0x1C]
LDR             R0, [R5]
LDR             R4, [R7]
CMP             R0, R4
BEQ             loc_254BD8
LDR             R0, [R4]
BL              sub_24A6B4
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_254BC0
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
