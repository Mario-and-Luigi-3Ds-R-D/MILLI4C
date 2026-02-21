LDR             R1, =off_6B0F38
PUSH            {R3-R5,LR}
MOV             R4, R0
STR             R1, [R0]
LDR             R0, =off_6CE970
MOV             R5, #0
STR             R5, [SP,#0x10+var_10]
LDR             R12, =0x10D4D8
LDR             R0, [R0]
MOV             R3, #0x100
MOV             R2, R5
MOV             R1, R5
ADD             R0, R0, R12; loc_10D4D8
BL              sub_4E3CA0
LDR             R1, =off_6C0770
ADD             R0, R4, #0xE0
STR             R1, [R4,#0xE0]
LDR             R1, [R4,#0xE4]
CMP             R1, #0
STRNE           R5, [R1,#0x64]
STRNE           R5, [R0,#4]
ADD             R0, R4, #0xB4
NOP
SUB             R0, R0, #0x98
NOP
POP             {R3-R5,LR}
SUB             R0, R0, #0x1C
B               sub_300FD4
