PUSH            {R4-R9,LR}
MOV             R5, R0
SUB             SP, SP, #0x1C
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
BEQ             loc_295324
LDR             R0, [R5,#4]
LDR             R1, [R4]
LDR             R0, [R0,#0x40]
BL              sub_28171C
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_2952F8
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
BL              sub_5CDB18
CMP             R0, #0
NOP
BEQ             loc_295460
LDR             R0, [R5,#4]
LDR             R7, [R0,#0x30]
LDRB            R1, [R7,#0x5D5]
CMP             R1, #0
BEQ             loc_295434
LDR             R1, =off_6BC3B4
STR             R1, [SP,#0x38+var_38]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
MOVNE           R8, #0
ADDNE           R6, R7, #0x4A0
BEQ             loc_295434
LDR             R0, [R4]
MOV             R1, #0
LDRB            R2, [R0,#0x415]
CMP             R2, #0
BEQ             loc_2953C8
ADD             R3, R0, #0x3F8
LDR             R0, [SP,#0x38+var_38]
ADD             R12, SP, #0x38+var_30
MOV             R1, SP
MOV             R2, R6
LDR             R9, [R0,#0xC]
MOV             R0, R12
BLX             R9
LDRB            R0, [SP,#0x38+var_30]
MOV             R1, #1
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_2953CC
MOV             R0, #0
CMP             R1, #0
LDRNE           R1, [SP,#0x38+var_2C]
CMPNE           R1, #0
STRNE           R8, [SP,#0x38+var_2C]
CMP             R0, #0
BEQ             loc_29543C
LDR             R0, [R4]
LDR             R1, [R0,#0x3F8]!
LDR             R1, [R1,#0x20]
BLX             R1
MOV             R2, R0
ADD             R1, R7, #0x400
ADD             R1, R1, #0xDC
ADD             R0, SP, #0x38+var_28
BL              sub_28C568
LDR             R0, [R4]
ADD             R1, SP, #0x38+var_28
BL              sub_283FD0
MOV             R0, R7
NOP
BL              sub_28A654
LDR             R0, [R5,#8]
NOP
BL              sub_2968D8
MOV             R0, #4
STRB            R0, [R5,#0x20]
ADD             SP, SP, #0x1C
POP             {R4-R9,PC}
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_295380
ADD             SP, SP, #0x1C
POP             {R4-R9,PC}
ADD             SP, SP, #0x1C
MOV             R0, R5
POP             {R4-R9,LR}
B               sub_295214
