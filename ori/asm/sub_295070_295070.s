PUSH            {R4-R11,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
BEQ             loc_2950CC
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
BNE             loc_2950A0
LDR             R0, [R5,#4]
MOV             R8, #2
LDR             R6, [R0,#8]
CMP             R6, #0
STRBEQ          R8, [R5,#0x20]
BEQ             loc_295150
LDR             R1, =off_6BC3B4
STR             R1, [SP,#0x38+var_38]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x1C]
MOV             R4, R0
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BEQ             loc_295150
MOV             R10, #0
MOV             R9, #1
ADD             R7, R6, #0x10
LDR             R1, [R4]
MOV             R0, R6
BL              sub_28F414
CMP             R0, #0
STRBNE          R9, [R5,#0x20]
BEQ             loc_295178
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
LDR             R0, [R0,#0x4C]
LDR             R0, [R0,#0x20]
CMP             R0, R4
NOP
BNE             loc_29511C
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
BL              sub_5CDB18
CMP             R0, #0
NOP
BNE             loc_295208
ADD             SP, SP, #0x14
MOV             R0, R5
POP             {R4-R11,LR}
B               sub_295214
LDR             R0, [R4]
MOV             R1, #0
LDRB            R2, [R0,#0x454]
CMP             R2, #0
BNE             loc_2951C0
ADD             R2, R0, #0x3F8
LDR             R0, [SP,#0x38+var_38]
ADD             R11, SP, #0x38+var_30
MOV             R1, SP
MOV             R3, R7
LDR             R12, [R0,#0xC]
MOV             R0, R11
BLX             R12
LDRB            R0, [SP,#0x38+var_30]
MOV             R1, #1
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_2951C4
MOV             R0, #0
CMP             R1, #0
LDRNE           R1, [SP,#0x38+var_2C]
CMPNE           R1, #0
STRNE           R10, [SP,#0x38+var_2C]
CMP             R0, #0
BEQ             loc_295134
LDR             R0, [R6,#0xC]
LDR             R2, [R4]
ADD             R1, R0, #0x24 ; '$'
MOV             R0, R2
BL              sub_283618
MOV             R0, R6
NOP
BL              sub_28E968
STRB            R8, [R5,#0x20]
NOP
B               loc_295134
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
