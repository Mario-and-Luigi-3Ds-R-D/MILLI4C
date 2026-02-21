PUSH            {R6,R7,R11,LR}
MOV             R11, R2
PUSH            {R4,R5}
LDM             R1, {R3-R5}
LDM             R0, {R0-R2}
TST             R0, #0x40000000
TSTEQ           R3, #0x40000000
BNE             loc_143698
BL              sub_13D69C
BL              sub_1435E4
POP             {R4-R7}
POP             {R11,PC}
