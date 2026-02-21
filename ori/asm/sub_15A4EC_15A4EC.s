PUSH            {R4,LR}
LDR             R1, [R0,#0xFC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0xFC]
BL              sub_158F78
POP             {R4,PC}
