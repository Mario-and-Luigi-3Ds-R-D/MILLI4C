PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x4E0]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_28FA44
MOV             R4, R0
LDR             R0, [R0]
MOV             R1, #0
BL              sub_14C5AC
LDR             R1, =off_6C0770
ADD             R0, R4, #4
STR             R1, [R4,#4]
LDR             R1, [R4,#8]
CMP             R1, #0
STRNE           R6, [R1,#0x64]
STRNE           R6, [R0,#4]
MOV             R0, R4
BL              sub_300FD4
STR             R6, [R5,#0x4E0]
ADD             R0, R5, #0xE4
BL              sub_14F3EC
SUB             R0, R0, #0xD4
NOP
NOP
SUB             R4, R0, #0x10
LDR             R0, [R0,#-0x10]
CMP             R0, #0
BEQ             loc_28FA74
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_28FAB8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_28FA9C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R4]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R4
POP             {R4-R6,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_28FA9C
