MOV             R2, R1
PUSH            {R4,LR}
MOV             R4, R0
ADR             R1, aS; "%s"
BL              sub_12B5B4
MOV             R0, R4
POP             {R4,PC}
