PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R0, =off_6ACEC4
MOV             R7, R4
STR             R0, [R5]
ADD             R1, R5, R4,LSL#2
LDR             R0, [R1,#0x40]
CMP             R0, #0
ADDNE           R6, R1, #0x40 ; '@'
BEQ             loc_158198
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
STR             R7, [R6]
BCC             loc_158168
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52D210
LDR             R1, =nullsub_1086
MOV             R3, #0x40 ; '@'
MOV             R2, #8
ADD             R0, R5, #0x9F0
BLX             sub_1009D8
ADD             R0, R5, #0x4B0
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x4B0
POP             {R4-R8,PC}
