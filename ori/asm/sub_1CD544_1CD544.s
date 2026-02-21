PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x28]
MOV             R5, R1
CMP             R0, #1
BNE             loc_1CD584
LDR             R0, [R4,#0x18]
LDR             R0, [R0]
LDRH            R1, [R0,#0x10]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
LDRB            R1, [R0,#0x4A0]
CMP             R1, #0
MOVNE           R1, R5
BLNE            sub_4E3D34
MOV             R2, #1
MOV             R1, #0
ADD             R0, R4, #0x28 ; '('
BL              sub_1CCBB4
MOV             R0, R4
NOP
BL              sub_4F17FC
LDR             R0, [R4,#0x18]
LDR             R5, [R0]
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_1CD5E8
MOV             R0, R5
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             loc_1CD5E8
LDR             R5, [R5,#0x18]
MOV             R0, R5
BL              sub_5C55B8
MOV             R1, R0
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R5
BL              sub_14C430
LDR             R0, [R4,#0x38]
CMP             R0, #0
BEQ             locret_1CD610
BL              sub_533330
LDR             R0, [R4,#0x38]
CMP             R0, #0
BEQ             locret_1CD610
MOV             R1, #0
STR             R1, [R0,#0x184]
STR             R1, [R4,#0x38]
POP             {R4-R6,PC}
