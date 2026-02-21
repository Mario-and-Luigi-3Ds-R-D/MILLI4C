PUSH            {R4-R8,LR}
MOV             R5, R0
SUB             SP, SP, #0x10
MOV             R0, #8
STRB            R0, [R5,#0xD]
MOV             R7, #0
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
ADD             R0, R5, #0x10
STRB            R7, [R5,#0xE]
BL              sub_14C548
LDR             R4, [R5]
LDR             R8, =off_6CE970
LDR             R0, [R4,#4]
CMP             R0, #0
BNE             loc_1FEC2C
LDR             R0, [R4,#0x10]
LDR             R12, [R8]
LDR             R2, =0x300C4
ADD             R1, R0, #0x10
LDR             R0, =0xFFE683CC
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R6, #0
STR             R6, [R4,#4]
STRNE           R4, [R6,#0x64]
LDR             R0, [R4,#0x14]
CMP             R0, #0
BNE             loc_1FEC70
ADD             R0, SP, #0x28+var_20
VLDR            S0, =0.0
VLDR            S1, =-0.1
VSTR            S0, [SP,#0x28+var_24]
ADD             R3, SP, #0x28+var_24
VSTM            R0, {S0-S1}
LDR             R1, [R4,#0x10]
LDR             R0, [R8]
STR             R7, [SP,#0x28+var_28]
ADD             R2, R1, #0x10
MOV             R1, #0x3E ; '>'
BL              sub_52AE88
STR             R0, [R4,#0x14]
STRH            R7, [R0,#0xA]
MOV             R0, #1
STRB            R7, [R5,#0x404]
STR             R0, [R5,#0x408]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
