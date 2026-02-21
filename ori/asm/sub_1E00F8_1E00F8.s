PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
BNE             loc_1E0128
ADD             R0, R4, #0x20 ; ' '
LDR             R1, [R4,#0x10]
LDM             R0, {R0,R2}
LDR             R3, [R0]
LDR             R3, [R3,#0xC]
BLX             R3
STR             R0, [R4,#0xC]
LDR             R0, [R4,#8]
LDR             R2, [R4,#0x14]
MOV             R3, #0
MOV             R5, R0
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
MOV             R1, R0
LDR             R0, [R5,#0x1C]
BL              sub_11C858
CMP             R0, #0
NOP
BEQ             locret_1E019C
LDR             R0, [R4,#0x18]
LDR             R3, [R4,#0x10]
CMP             R3, R0
MOVHI           R5, R3
BHI             loc_1E01A0
LDR             R6, [R4,#8]
LDR             R2, [R4,#0xC]
MOV             R0, R6
LDR             R1, [R6]
LDR             R12, [R1,#0x28]
MOV             R1, SP
BLX             R12
LDR             R2, [R6,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
POP             {R3-R7,PC}
MOV             R3, R0
CMP             R5, R3
BHI             loc_1E01E0
LDR             R6, [R4,#8]
LDR             R2, [R4,#0xC]
MOV             R3, R5
MOV             R0, R6
LDR             R1, [R6]
LDR             R12, [R1,#0x28]
MOV             R1, SP
BLX             R12
LDR             R2, [R6,#0x1C]
MOV             R1, R0
MOV             R0, R2
BL              sub_11C858
POP             {R3-R7,PC}
LDR             R0, [R4,#8]
LDR             R2, [R4,#0xC]
MOV             R6, R0
LDR             R1, [R0]
LDR             R12, [R1,#0x28]
MOV             R1, SP
BLX             R12
MOV             R1, R0
LDR             R0, [R6,#0x1C]
BL              sub_11C858
CMP             R0, #0
LDRNE           R0, [R4,#0x18]
SUBNE           R5, R5, R0
BNE             loc_1E01A0
POP             {R3-R7,PC}
