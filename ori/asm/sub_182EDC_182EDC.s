PUSH            {R4-R7,LR}
MOV             R1, R2
MOV             R4, R0
LDR             R2, [R0]
LDR             R0, [R3,#8]
SUB             SP, SP, #0xC
LDR             R12, [R2,#0x9C]
SXTB            R3, R0
LDR             R2, [R4,#4]
MOV             R0, R4
BLX             R12
LDR             R1, [R0]
LDR             R5, [R4,#4]
MOV             R6, R0
LDR             R1, [R1,#0x3C]
BLX             R1
ADD             R4, R0, #0x100
LDR             R1, =byte_6EC430
LDRSH           R2, [R4,#0x76]
MOV             R7, #0xFFFFFFFF
CMN             R2, #1
BEQ             loc_182F5C
STR             R1, [SP,#0x20+var_18]
ADD             R3, R5, #0xCC
MOV             R1, R0
STR             R3, [SP,#0x20+var_1C]
STR             R5, [SP,#0x20+var_20]
LDRSH           R3, [R4,#0x7A]
MOV             R0, R6
BL              sub_1F33A0
STRH            R7, [R4,#0x76]
B               loc_182F78
STR             R1, [SP,#0x20+var_20]
LDR             R1, [R0]
LDRSH           R2, [R4,#0x7A]
ADD             R3, R5, #0xCC
LDR             R12, [R1,#0x170]
LDRSH           R1, [R4,#0x74]
BLX             R12
STRH            R7, [R4,#0x7A]
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}
