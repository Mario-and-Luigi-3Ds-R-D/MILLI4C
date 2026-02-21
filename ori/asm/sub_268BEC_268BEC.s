PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0]
MOV             R6, #0
CMP             R5, #0
BEQ             loc_268C38
LDR             R0, [R5,#4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, =off_6C0770
STR             R0, [R5]
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
MOV             R0, R5
STRNE           R6, [R5,#4]
BL              sub_300FD4
STR             R6, [R4]
LDR             R0, [R4,#0x50]
CMP             R0, #0
BEQ             loc_268C4C
BL              sub_533330
STR             R6, [R4,#0x50]
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#0x10]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x10
POP             {R4-R6,PC}
