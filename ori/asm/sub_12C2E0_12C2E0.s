PUSH            {R4-R10,LR}
MOVS            R6, R1
MOV             R8, R2
MOV             R9, #0
MOV             R7, R3
MOV             R4, R0
STREQ           R9, [R0,#0x4C]
BEQ             locret_12C3B0
MOV             R0, R1
LDR             R0, [R0,#0xC]
CMP             R7, #0
MOV             R5, R0
CMPNE           R5, #0
STR             R9, [R4,#0x4C]
BEQ             locret_12C3B0
LDR             R0, [R4,#0x44]
ADD             R1, R4, #0x44 ; 'D'
STR             R9, [R4,#0x3C]
BIC             R0, R0, #0xD
STR             R9, [R4,#0x18]
STM             R1, {R0,R9}
MOV             R0, R6
LDR             R0, [R0,#0x20]
STR             R0, [R4,#0x28]
ADDS            R0, R4, #0x344
BEQ             loc_12C35C
MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
MOV             R0, R6
STR             R5, [R4,#0x20]
STR             R6, [R4,#0x10]
BL              sub_137788
STR             R0, [R4,#4]
MOV             R1, R8
ADD             R0, R4, #0x1BC
BL              sub_134878
LDRSB           R0, [R8,#7]
STR             R0, [R4,#0x24]
ADDS            R0, R4, #0x334
STR             R7, [R4,#0x18]
BEQ             loc_12C3A4
MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
LDR             R0, [R4]
ADD             R0, R0, #1
STR             R0, [R4,#8]
POP             {R4-R10,PC}
