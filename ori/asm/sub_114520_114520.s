PUSH            {R4,LR}
LDR             R4, =off_6D2420
STR             R0, [R4]
BL              sub_116198
CMP             R0, #0
MOVEQ           R3, #0xFFFFFFFF
BEQ             loc_114558
MOV             R1, #0
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
LDR             R2, [R4]
MOV             R3, R1
STRD            R0, R1, [R2]
STRD            R0, R1, [R2,#8]
MOV             R0, R3
POP             {R4,PC}
