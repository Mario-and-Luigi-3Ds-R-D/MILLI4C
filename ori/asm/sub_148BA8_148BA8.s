PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
BLNE            sub_148BC8
MOV             R0, R4
POP             {R4,LR}
NOP
