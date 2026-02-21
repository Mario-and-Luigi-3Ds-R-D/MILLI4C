ADD             R0, R0, #0x400
ADD             R0, R0, #0xC
PUSH            {R4-R6,LR}
MOV             R6, #0
LDR             R1, [R0,#4]
CMP             R1, #0
STRNE           R6, [R0,#4]
SUB             R0, R0, #8
LDR             R1, [R0,#4]
CMP             R1, #0
STRNE           R6, [R0,#4]
SUB             R0, R0, #0x3F4
BL              sub_14F3EC
SUB             R5, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_1FF5C8
LDR             R4, [R5]
CMP             R4, #0
BEQ             loc_1FF5C8
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1FF55C
BL              sub_533330
STR             R6, [R4,#0x14]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_1FF580
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R4,#4]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_1FF5A4
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0xC]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R4,#0xC]
LDR             R0, =off_6C0770
STR             R0, [R4,#8]
STR             R0, [R4]
LDR             R0, [R4,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
MOV             R0, R4
STRNE           R6, [R4,#4]
BL              sub_300FD4
LDR             R1, [R5,#4]
LDR             R0, [R5,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R5
POP             {R4-R6,PC}
