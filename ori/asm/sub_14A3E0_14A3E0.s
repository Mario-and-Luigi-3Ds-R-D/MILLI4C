PUSH            {R4,LR}
MOV             R4, R0
MOV             R1, #0
MOV             R0, #0xB
STR             R1, [R4,#0x30]
STRB            R0, [R4,#0x34]
MOV             R0, R4
MOV             R2, #0x28 ; '('
BL              sub_110BE4
MOV             R0, R4
POP             {R4,PC}
