PUSH            {R4,LR}
BL              sub_1035F0
LDR             R1, =off_6C3C64
STR             R1, [R0]
MOVS            R1, #0
STR             R1, [R0,#4]
POP             {R4,PC}
