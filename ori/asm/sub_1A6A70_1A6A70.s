PUSH            {R4,LR}
MOV             R1, #0
STR             R1, [R0,#0x14]
STR             R1, [R0,#0xC]
MOV             R4, R0
STR             R1, [R0,#0x10]
LDR             R0, [R0,#8]
STR             R1, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R0, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R0, R4
POP             {R4,PC}
