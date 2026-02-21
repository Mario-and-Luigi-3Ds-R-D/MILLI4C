PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R8, R2
MOV             R9, R3
LDR             R0, [SP,#0x20+arg_4]
LDR             R5, [SP,#0x20+arg_0]
STR             R0, [R4,#0x14]
ADD             R0, R1, R5
SUB             R0, R0, #1
MOV             R1, R5
BL              sub_127F6C
MUL             R6, R0, R5
ADD             R0, R8, R5
SUB             R0, R0, #1
MOV             R1, R5
STR             R6, [R4,#0x18]
BL              sub_127F6C
MUL             R7, R0, R5
ADD             R0, R8, R9
MOV             R1, R6
SUB             R0, R0, R7
STR             R7, [R4,#0x1C]
BL              sub_127F6C
MUL             R1, R0, R6
MOV             R0, #0
STR             R1, [R4,#0x20]
ADD             R1, R1, R7
SUB             R1, R1, R6
STR             R0, [R4,#0x2C]
CMP             R7, R1
STR             R5, [R4,#0x28]
BHI             loc_1288D8
STR             R0, [R1]
LDRD            R2, R3, [R4,#0x18]
MOV             R0, R1
SUB             R1, R1, R2
CMP             R3, R1
BLS             loc_1288C0
STR             R0, [R4,#0x24]
POP             {R4-R10,PC}
