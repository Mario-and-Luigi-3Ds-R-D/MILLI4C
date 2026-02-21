CMP             R1, #0
BXNE            LR
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
CMP             R0, #0
BNE             loc_259CB8
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#4]
LDR             R2, =0x301D9
LDR             R12, [R12]
ADD             R5, R4, #0x10
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             locret_259CE4
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             locret_259CE4
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R4,#0xC]
POP             {R4-R6,PC}
