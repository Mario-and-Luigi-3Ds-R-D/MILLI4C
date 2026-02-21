PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
STR             R1, [R4,#0x10]
LDR             R0, [R0,#0xC]
STR             R0, [R4,#0x20]
POP             {R4,PC}
