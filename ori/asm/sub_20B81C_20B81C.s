ADD             R2, R2, #8
PUSH            {R4,LR}
LDM             R2, {R0,R2}
AND             R4, R2, #0xFF
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
CMP             R4, #0
BEQ             loc_20B854
MOV             R2, #0
MOV             R1, R4
BL              sub_501E18
B               loc_20B85C
NOP
BL              sub_502348
MOV             R0, #0
POP             {R4,PC}
