PUSH            {R4,LR}
LDR             R2, =off_6B17B8
LDR             R1, [R0,#0xC]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
BLNE            sub_528B1C
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
