PUSH            {R4,LR}
MOV             R4, R0
LDRSB           R2, [R0,#0x14]
LDRD            R0, R1, [R4,#0xC]
BL              sub_45C6BC
LDR             R2, [R4,#8]
MOV             R1, R0
POP             {R4,LR}
MOV             R0, R2
NOP
