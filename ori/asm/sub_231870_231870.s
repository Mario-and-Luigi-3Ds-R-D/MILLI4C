PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #1
MOV             R6, R1
STRB            R7, [R0,#0x1CD]
LDM             R2, {R0-R2}
MOV             R5, R3
ADD             R3, R4, #0x1D0
STM             R3, {R0-R2}
BL              sub_463584
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x1E4]
ADD             R0, R4, #0x1DC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R8, R4, #0x1E8
LDR             R0, [R0,#8]
MOV             R3, #0x1F8
TST             R5, #8
STR             R0, [R4,#0x1F0]
STR             R6, [R4,#0x1F4]
STM             R8, {R1,R2}
MOV             R0, R6
STRH            R5, [R3,R4]
BEQ             locret_231904
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R0, [R4,#0x1F4]
LDR             R1, [R0]
BEQ             loc_231908
LDR             R1, [R1,#0x38]
BLX             R1
STRB            R7, [R0,#0xCD]
POP             {R4-R8,PC}
LDR             R1, [R1,#0x3C]
BLX             R1
LDRB            R1, [R0,#0x2F7]
ORR             R1, R1, #1
STRB            R1, [R0,#0x2F7]
POP             {R4-R8,PC}
