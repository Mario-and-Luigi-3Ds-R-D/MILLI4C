PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, #0
LDR             R4, [R0,#0x14]
LDRB            R0, [R4,#0x3F8]
CMP             R0, #1
BEQ             loc_1F8D5C
CMP             R0, #3
BNE             loc_1F8DA8
B               loc_1F8D94
ADD             R0, R4, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1F8DA8
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
STRB            R7, [R4,#0x3F8]
BL              sub_14C548
NOP
NOP
B               loc_1F8DA8
MOV             R0, R4
BL              sub_5C4A1C
CMP             R0, #0
MOVEQ           R0, #4
STRBEQ          R0, [R4,#0x3F8]
LDR             R6, [R5,#0x14]
LDRB            R0, [R6,#0x3F8]
CMP             R0, #4
BNE             locret_1F8DF4
LDR             R0, =off_6CDC90
LDR             R0, [R0]
ADD             R4, R0, #0x12400
ADD             R4, R4, #0x364
MOV             R0, R6
BL              sub_14F3EC
LDR             R0, [R4,#4]
STR             R0, [R6]
STR             R6, [R4,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
MOV             R0, #1
STR             R7, [R5,#0x14]
STRB            R0, [R5,#0x18]
POP             {R4-R8,PC}
