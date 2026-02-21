PUSH            {R4,LR}
BL              sub_194BD0
LDR             R2, =off_6B3BD0
MOV             R1, #0
STR             R2, [R0]
STRH            R1, [R0,#0xB8]
POP             {R4,PC}
