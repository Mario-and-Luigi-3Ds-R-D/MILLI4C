PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, =off_6B0F38
MOV             R5, #0
LDR             R12, =0x10D4D8
STR             R0, [R4]
LDR             R0, =off_6CE970
STR             R5, [SP,#0x10+var_10]
MOV             R3, #0x100
MOV             R2, R5
LDR             R0, [R0]
MOV             R1, R5
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
LDR             R0, =off_6C0770
STR             R0, [R4,#0xE0]!
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R5, [R0,#0x64]
SUB             R0, R4, #0x2C ; ','
STRNE           R5, [R4,#4]
NOP
SUB             R0, R0, #0x98
NOP
SUB             R0, R0, #0x1C
POP             {R3-R5,PC}
