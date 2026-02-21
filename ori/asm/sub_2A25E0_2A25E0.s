PUSH            {R4,LR}
LDR             R2, =off_6B3E48
LDR             R1, [R0,#0x10]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
LDRNE           R0, [R4,#0xC]
CMPNE           R0, #0
MOVNE           R0, R4
BLNE            sub_528B1C
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
