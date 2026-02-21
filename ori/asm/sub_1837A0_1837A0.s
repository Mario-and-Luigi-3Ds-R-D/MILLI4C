PUSH            {R4-R8,LR}
MOV             R1, R2
MOV             R4, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R4,#4]
MOV             R0, R4
BLX             R12
LDR             R1, [R0]
LDR             R6, [R4,#4]
MOV             R5, R0
LDR             R1, [R1,#0x38]
BLX             R1
LDRSH           R2, [R0,#0xB2]
MOV             R4, R0
MOV             R7, #0xFFFFFFFF
CMN             R2, #1
BEQ             loc_183824
MOV             R1, R0
MOV             R3, R6
MOV             R0, R5
BL              sub_1F1E60
LDR             R0, [R4]
LDRSH           R1, [R4,#0xB4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x54]
MOV             R0, R4
BLX             R12
STRH            R7, [R4,#0xB2]
B               loc_183840
LDR             R0, [R4]
LDRSH           R1, [R4,#0xB4]
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x54]
MOV             R0, R4
BLX             R12
MOV             R0, #0
STRH            R7, [R4,#0xB4]
POP             {R4-R8,PC}
