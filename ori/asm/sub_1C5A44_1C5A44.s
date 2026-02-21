PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x400
LDR             R0, [R0,#0x400]
CMP             R0, #0
BEQ             loc_1C5A68
BL              sub_533330
MOV             R0, #0
STR             R0, [R5]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x98
BL              sub_14F3EC
LDR             R5, =off_6B7BEC
SUB             R4, R0, #0x40 ; '@'
LDR             R1, =nullsub_300
STR             R5, [R0,#-0x40]
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x400
SUB             R0, R0, #0x24 ; '$'
B               sub_14F3EC
