PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R0, #0
MOV             R1, #0
STR             R0, [R4]
ADD             R0, R4, #4
STR             R0, [R4,#8]
STR             R0, [R4,#4]
ADD             R0, R4, #0x1C
STR             R1, [R4,#0x18]
LDR             R10, =off_6CE388
STR             R0, [R4,#0x20]
STR             R0, [R4,#0x1C]
STRB            R1, [R4,#0xC]
STRB            R1, [R4,#0xD]
LDR             R0, [R10]
MOV             R9, R1
LDR             R0, [R0,#0x94]
STR             R0, [R4,#0x10]
LDR             R0, [R10]
LDR             R0, [R0,#0x94]
LDR             R0, [R0,#0x18]
MOV             R3, #0
ADD             R6, R4, #0x18
STR             R0, [R4,#0x14]
LDR             R0, =off_6CE970
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
LDRNE           R1, [R4,#0x14]
LDR             R7, =off_6C0770
STRNE           R1, [R0,#8]
STMNE           R0, {R7,R9}
MOVEQ           R0, #0
LDR             R1, [R6,#8]
MOV             R8, R0
ADD             R0, R6, #4
CMP             R1, R0
BNE             loc_1A5174
LDR             R5, [R6]
CMP             R5, #0
BEQ             loc_1A5194
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A514C
LDR             R0, [R10]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R5,#4]
BL              sub_1586A8
STR             R7, [R5]
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R9, [R0,#0x64]
MOV             R0, R5
STRNE           R9, [R5,#4]
BL              sub_300FD4
NOP
NOP
B               loc_1A5194
ADD             R0, R6, #4
CMP             R1, R0
BEQ             loc_1A5194
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
MOV             R0, R4
STR             R8, [R6]
POP             {R4-R10,PC}
