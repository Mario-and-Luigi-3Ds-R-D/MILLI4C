PUSH            {R4,LR}
MOV             R1, #0
MOV             R4, R0
STRH            R1, [R0,#0x38]
BL              sub_10D4F0
MOV             R0, R4
POP             {R4,PC}
