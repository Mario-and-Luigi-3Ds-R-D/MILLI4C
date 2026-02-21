PUSH            {R4-R6,LR}
ADD             R5, R0, #0x2000
LDR             R1, =off_6B165C
MOV             R4, R0
STR             R1, [R0]
LDR             R0, [R5,#0x23C]
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_36709C
LDR             R0, [R5,#0x238]
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_36709C
LDR             R0, [R4,#0xC]
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_528B1C
LDR             R1, =sub_1CEDB8
MOV             R3, #0x13
MOV             R2, #0x1CC
ADD             R0, R4, #0x10
BLX             sub_1009D8
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_300FD4
