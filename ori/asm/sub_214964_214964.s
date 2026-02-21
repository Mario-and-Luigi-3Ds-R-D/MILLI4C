PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
SUB             SP, SP, #0xC
CMP             R0, #0
BNE             loc_2149EC
MOV             R2, #0xFFFFFF00
MOV             R0, R4
REV             R2, R2
ADD             R1, SP, #0x18+var_14
STR             R2, [SP,#0x18+var_14]
LDR             R2, [R4]
LDR             R2, [R2,#0x3C]
BLX             R2
LDR             R0, =off_6CE970
LDR             R1, =0xC018
LDR             R0, [R0]
BL              sub_52FACC
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R3, [R2,#0x58]
MOV             R2, #0
BLX             R3
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0x3F4]
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R5, =flt_6E34B0
MOV             R1, #0
ADD             R0, R4, #0x1DC
ADD             R2, R5, #0x90
VLDR            S0, [R5,#(flt_6E3558 - 0x6E34B0)]
VCVT.F32.U32    S0, S0
BL              sub_5A2298
MOV             R0, #0xFFFFFFFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
VLDR            S0, [R5,#(flt_6E3558 - 0x6E34B0)]
ADD             R0, R4, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
