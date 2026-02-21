PUSH            {R4,LR}
LDR             R0, [R2,#8]
MOV             R4, R2
LDR             R2, =off_6CE970
AND             R1, R0, #0xFF
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_503508
CMP             R0, #0
BEQ             locret_211E40
LDR             R1, [R4,#0xC]
SXTH            R1, R1
BL              sub_1586A8
MOV             R0, #0
POP             {R4,PC}
