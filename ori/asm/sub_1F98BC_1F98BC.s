PUSH            {R4-R10,LR}
LDR             R1, =off_6BB7D0
STR             R1, [R0],#8
ADD             R8, R0, #0xC
LDR             R6, [R0,#0xC]!
LDR             R5, [R0,#4]
CMP             R6, R5
LDRNE           R10, =off_6CDC90
BEQ             loc_1F9944
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1F9930
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1F9930
LDR             R0, [R10]
ADD             R7, R0, #0x12000
ADD             R7, R7, #0x750
MOV             R0, R9
BL              sub_14F3EC
LDR             R0, [R7,#4]
STR             R0, [R9]
STR             R9, [R7,#4]
LDR             R0, [R7,#8]
ADD             R0, R0, #1
STR             R0, [R7,#8]
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1F98E0
SUB             R0, R8, #0x14
POP             {R4-R10,LR}
B               sub_300FD4
