LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R1, =0x10D4A4
LDR             R0, [R0]
ADD             R0, R0, R1
BL              sub_5A18EC
MOV             R0, #0
POP             {R4,PC}
