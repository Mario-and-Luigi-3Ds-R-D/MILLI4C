PUSH            {R3-R7,LR}
ADD             R5, R3, #8
MOV             R1, R2
LDR             R12, [R0]
LDR             R3, [R3,#8]
LDR             R2, [R0,#4]
LDR             R12, [R12,#0x9C]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
MOV             R6, R0
LDR             R1, [R1,#0x38]
BLX             R1
MOV             R4, R0
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_182FEC
LDR             R0, [R4,#0xA4]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
STRH            R0, [R4,#0xB6]
LDR             R1, [R4,#0xA4]
MOV             R2, #1
STR             R2, [SP,#0x18+var_18]
LDR             R12, [R4]
ADD             R2, R6, #0x400
LDRSH           R3, [R1,#0x16]
VLDR            S0, [R2,#0x70]
LDR             R12, [R12,#0x58]
LDRB            R1, [R1,#0x6C]
LDR             R2, [R5,#4]
MOV             R0, R4
BLX             R12
MOV             R0, #0
POP             {R3-R7,PC}
