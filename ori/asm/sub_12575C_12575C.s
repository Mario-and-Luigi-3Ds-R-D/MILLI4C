PUSH            {R4,LR}
LDR             R4, =dword_6D2418
LDR             R1, [R4]
BL              sub_12CC50
STR             R0, [R4]
POP             {R4,PC}
