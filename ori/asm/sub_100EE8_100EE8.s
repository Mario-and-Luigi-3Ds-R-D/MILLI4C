MOVS            R3, R1
PUSH            {R4,LR}
MOVS            R1, R2
STR             R3, [R2,#0xC]
LDR             R2, =(sub_100EDC+1 - 0x100EF6)
ADD             R2, PC; sub_100EDC
STR             R2, [R1,#0x14]
LDR             R2, =(sub_100B30+1 - 0x100EFC)
ADD             R2, PC; sub_100B30
STR             R2, [R1,#0x20]
MOVS            R2, #0
STR             R2, [R1,#0x10]
BL              sub_101760
POP             {R4,PC}
