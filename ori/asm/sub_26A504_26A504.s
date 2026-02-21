PUSH            {R3-R9,LR}
MOV             R2, R1
MOV             R6, R0
MOV             R7, #0
LDR             R0, =off_6CE970
MOV             R3, #1
MOV             R1, #0x22 ; '"'
LDR             R0, [R0]
STR             R7, [SP,#0x20+var_20]
BL              sub_52AEA8
LDR             R0, [R6,#0x48]
LDR             R4, [R6,#0x44]
CMP             R0, R4
LDRNE           R9, =off_6CDF98
MOVNE           R8, #1
BEQ             loc_26A588
MOV             R0, #0xFFFFFF00
LDR             R5, [R4]
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R9]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x64C]
VMOV            S0, R0
ADD             R0, R5, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E665C
STRB            R8, [R5,#0x3F4]
LDR             R0, [R6,#0x48]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26A544
STRB            R7, [R6,#0x1C]
POP             {R3-R9,PC}
