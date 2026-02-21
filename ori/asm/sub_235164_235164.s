PUSH            {R4,LR}
BL              sub_200708
LDR             R2, =off_6B3900
MOV             R1, #0xC
STR             R2, [R0]
STRB            R1, [R0,#0xB4]
POP             {R4,PC}
