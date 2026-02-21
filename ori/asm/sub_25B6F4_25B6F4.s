PUSH            {R4-R8,LR}
SUB             SP, SP, #0x30
MOV             R6, R0
LDR             R7, =off_6CE098
ADD             R0, SP, #0x48+var_34
LDR             R1, [R7]
LDR             R2, [R1,#0x68]!
ADD             R1, R1, #4
STR             R1, [SP,#0x48+var_34]
STR             R2, [SP,#0x48+var_38]
LDR             R2, [R1,#4]
STR             R2, [SP,#0x48+var_30]
STR             R0, [R2]
STR             R0, [R1,#4]
LDR             R0, [SP,#0x48+var_38]
BL              sub_2587BC
LDR             R1, [SP,#0x48+var_30]
ADD             R0, SP, #0x48+var_34
CMP             R1, R0
BNE             loc_25B758
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_25B758
BL              sub_25AEE4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_34]
MOV             R8, #0
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
ADD             R1, SP, #0x48+var_40
LDR             R2, [R0,#0x74]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_40]
STR             R2, [SP,#0x48+var_44]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_3C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_44]
BL              sub_25B110
LDR             R1, [SP,#0x48+var_3C]
ADD             R0, SP, #0x48+var_40
CMP             R1, R0
BNE             loc_25B818
LDR             R0, [SP,#0x48+var_44]
CMP             R0, #0
MOVNE           R4, R0
BEQ             loc_25B818
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#0x5C]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x5C ; '\'
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#4]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_40]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
ADD             R1, SP, #0x48+var_28
LDR             R2, [R0,#0x80]!
ADD             R0, R0, #4
STR             R0, [SP,#0x48+var_28]
STR             R2, [SP,#0x48+var_2C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x48+var_24]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x48+var_2C]
BL              sub_256718
LDR             R1, [SP,#0x48+var_24]
ADD             R0, SP, #0x48+var_28
CMP             R1, R0
BNE             loc_25B880
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BEQ             loc_25B880
BL              sub_257494
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x48+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
ADD             R5, R0, #0x12000
ADD             R0, R0, #0x12800
ADD             R0, R0, #0x1EC
ADD             R5, R5, #0x9F0
LDR             R4, [R0]
LDR             R0, [R5]
CMP             R0, R4
BEQ             loc_25B8C8
LDR             R0, [R4]
BL              sub_24A920
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_25B8B0
LDR             R1, =off_6CE970
LDR             R0, =0x19DEE8
VLDR            S1, =0.0039062
LDR             R1, [R1]
ADD             R0, R0, R1; loc_19DEE8
VLDR            S0, [R0]
LDR             R0, [R7]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x1C]
STRB            R8, [R6,#8]
ADD             SP, SP, #0x30 ; '0'
POP             {R4-R8,PC}
