CMP             R0, #0
PUSH            {R4,LR}
BEQ             locret_1036EE
MOVS            R2, R0
SUBS            R2, #8
LDM             R2, {R2,R3}
BL              sub_1009D8
POP             {R4,PC}
