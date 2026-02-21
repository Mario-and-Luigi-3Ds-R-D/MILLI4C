PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xAC]
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_19B3E4
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x1A4
BL              sub_10A358
CMP             R0, #0
BLNE            sub_1E1F40
STR             R0, [R4,#0xAC]
MOV             R0, #1
POP             {R4,PC}
